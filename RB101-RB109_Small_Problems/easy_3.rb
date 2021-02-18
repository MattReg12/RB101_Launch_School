# 1
=begin
check_array = []

puts "Enter the first number: "
check_array << gets.chomp.to_i
puts "Enter the 2nd number: "
check_array << gets.chomp.to_i
puts "Enter the 3rd number: "
check_array << gets.chomp.to_i
puts "Enter the 4th number: "
check_array << gets.chomp.to_i
puts "Enter the 5th number: "
check_array << gets.chomp.to_i
puts "Enter the 6th number: "
final_num = gets.chomp.to_i


if check_array.include?(final_num)
  puts "The number #{final_num} appears in #{check_array}."
else
  puts "The number #{final_num} does not appear in #{check_array}."
end

# 2

puts "Enter the first number: "
num1 = gets.chomp.to_i
puts "Enter the 2nd number: "
num2 = gets.chomp.to_i

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"


# 3

puts "Please write a word or multiple words: "
answer = gets.chomp

non_blank_chars = (answer.length - answer.count(" "))

puts "There are #{non_blank_chars} in #{answer}"

# They used delete method on string

# 4

def multiply(num1, num2)
  num1 * num2
end

# p multiply([1,2,3],3)

# 5

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  multiply(num,num)

p square(5)


# 6

def xor?(bool1, bool2)
  [bool1, bool2].uniq.size == 2
end

p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 

# 7

def oddities(arr)
  new_arr = []
  arr.each_with_index do |item, index|
    if (index + 2).even?
      new_arr << item
    end
  end
new_arr
end

p oddities([1,2,3,4,5,6,7])

# 8

def palindrome?(str)
  str.reverse == str
end

p palindrome?([1,2,3,2,1])
p palindrome?('Madam')        # (case matters)
p palindrome?("madam i'm adam")
p palindrome?('356653')

# 9

def real_palindrome?(str)
  eval_arr = str.downcase.chars.select { |char| ("a".."z").cover?(char)}
  eval_arr == eval_arr.reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')        # (case does not matter)
p real_palindrome?("Madam, I'm Adam")# (only alphanumerics matter)
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
=end
# 10

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(012210)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)