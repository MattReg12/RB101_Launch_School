require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def prompt(message)
  Kernel.puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt MESSAGES["es"]["welcome"]

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?
    prompt MESSAGES["valid_name"]
  else
    break
  end
end

prompt "Hi #{name}"

loop do # main loop
  number1 = ''
  number2 = ''
  loop do
    prompt 'What\'s the first number?'
    number1 = Kernel.gets().chomp()
    if valid_number? number1
      break
    else
      prompt MESSAGES["int_error"]
    end
  end

  loop do
    prompt('What\'s the second number?')
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt MESSAGES["int_error"]
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1 - Add
    2 - Subtract
    3 - Multiply
    4 - Divide
  MSG

  prompt(operator_prompt)
  operator = ' '
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? Press Y to calc again")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!")
