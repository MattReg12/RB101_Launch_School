require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('m_loan_calc.yml')

def int_valid?(input)
  input.to_i.to_s == input && input.include?("-") == false
end

def float_valid?(input)
  input.to_f.to_s == input && input.include?("-") == false
end

def monthly_payment_calc(loan_am, int_rate,duration)
  duration = duration * 12 # converts loan term to months
  monthly_int_rate = (int_rate.to_f / 100) / 12 # gets monthly interst rate needed for calc
  int_and_principal_rate = monthly_int_rate / (1 - (1 + monthly_int_rate)**-duration) # combines prin and int rate
  loan_am * int_and_principal_rate # returns final monthly payment
end

keep_going = true

while keep_going
  user_input = {loan_amount: '', apy: '', loan_term: ''}
  puts MESSAGES['welcome']

  loop do
    puts MESSAGES['loan_amount_prompt']
    user_input[:loan_amount] = gets.chomp
    break if int_valid?(user_input[:loan_amount]) 
    puts MESSAGES['error_message']
  end

  loop do
    puts MESSAGES['apy_prompt']
    user_input[:apy] = gets.chomp
    break if float_valid?(user_input[:apy])
    puts MESSAGES['float_error_message']
  end

  loop do
    puts MESSAGES['loan_term_prompt']
    user_input[:loan_term] = gets.chomp
    break if int_valid?(user_input[:loan_term])
    puts MESSAGES['error_message']
  end

  puts "Calculating...."
  puts "Your estimated monthly payments is $#{format('%.2f',monthly_payment_calc(user_input[:loan_amount].to_i,user_input[:apy].to_f,user_input[:loan_term].to_i))}. Good luck paying that off!"
  puts "Would you like to enter another loan? Press Y if yes"
  gets.chomp == "y".downcase ? keep_going = true : keep_going = false
end

puts 'Have a wonderful day! Thanks for using our app.'