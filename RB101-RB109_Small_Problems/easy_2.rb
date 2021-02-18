# 1
=begin
def rand_age_for_name(name="Teddy")
puts "#{name} is #{rand(20..100)} years old!"
end

# 2

def display_square_area(length, width)
  square_area_meters = length * width
  square_area_feet = square_area_meters * 10.7639
  puts "The area of the room is #{square_area_meters} square meter (#{square_area_feet.round(3)} square feet)."
end

puts "Enter the length of the room: "
user_length = gets.chomp.to_i

puts "Enter the width of the room: "
user_width = gets.chomp.to_i

display_square_area(user_length, user_width)

# 3

puts "What is the bill amount?"
bill_amount = gets.chomp.to_f

puts "What is the tip %?"
tip_percentage = (gets.chomp.to_f) / 100

total_bill = (bill_amount * tip_percentage) + bill_amount
tip_amount = bill_amount * tip_percentage

puts "The tip is #{sprintf("%.2f",tip_amount)}"
puts "The total is #{sprintf("%.2f",total_bill)}"

# 4

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_left_working = retirement_age - current_age
retirement_year = Time.now.year + years_left_working

puts "Its #{Time.now.year}. You will retire in #{retirement_year}. \nYou only have #{years_left_working} years to go!"


# 5

puts "What is your name?"
answer = gets.chomp
if answer.include?("!")
  puts "HELLO #{answer[0..(answer.length - 2)].upcase}. WHY ARE WE SCREAMING??"
else
  puts "Hello #{answer}."
end

# or 

puts "What is your name?"
answer = gets.chomp
if answer[-1] == ("!")
  puts "HELLO #{answer.delete_suffix("!").upcase}. WHY ARE WE SCREAMING??"
else
  puts "Hello #{answer}."
end

#6 

# (1..99).each { |num| puts num if num.odd?}

# 7
#(1..99).each { |num| puts num if num.even?}


value = 2
while value < 100
  puts value
  value += 2
end

# 8

int = 0
operator = ''
loop do
  puts "Please enter an integer greater than 0:"
  int = gets.chomp.to_i
  break if int > 0
  puts "You didnt enter a valid input. Please try again"
end

loop do
  puts "Enter 's' to compute the same, 'p' to compute the product."
  operator = gets.chomp.downcase
  break if operator == "s" || operator == "p"
  puts "You didnt enter a valid input. Please try again"
end

arr = (1..int).to_a

if operator == 's'
  puts "The sum of the integers between 1 and #{int} is #{arr.sum}."
elsif operator == 'p'
  puts "The product of the integers between 1 and #{int} is #{arr.reduce(:*)}."
else
  puts "You didnt enter a valid operator"
end
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
