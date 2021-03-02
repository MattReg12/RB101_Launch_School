# 1
=begin
def sum_of_sums(arr)
  counter = 0
  place_arr = []
  arr.each do |num|
    place_arr << num
    counter += place_arr.sum
  end
  counter
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])


# 2

puts "Please enter a noun: "
noun = gets.chomp 

puts "Please enter a verb: "
verb = gets.chomp 

puts "Please enter an adjective: "
adjective = gets.chomp 

puts "Please enter an adverb: "
adverb = gets.chomp 

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# 3

def leading_substrings(str)
  sub_str_arr = []
  counter = 0 
  str.length.times do 
    sub_str_arr << str.slice(0..counter)
    counter += 1
  end
  sub_str_arr
end

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')

# 4

def substrings(str)
  sub_arr = []
  counter = 0
  until (counter + 1) > str.length
    sub_arr << leading_substrings(str.slice(counter..-1))
    counter += 1
  end
  sub_arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
  # 5

def palindromes(str)
  arr = substrings(str)
  arr.select do |item|
    item.size > 1 && item == item.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# 6

def fizzbuzz(int1, int2)
  arr = (int1..int2).to_a
  arr.each do |num|
    case
    when num % 3 == 0 && num % 5 == 0 then puts "FizzBuzz"
    when num % 3 == 0 then puts "Fizz"
    when num % 5 == 0 then puts "Buzz"
    else puts num
    end
  end
end

fizzbuzz(1, 15)

# 7

def repeater(str)
  str.chars.map! { |char| char * 2}.join
end

p repeater('Hello')
p repeater("Good job!")

# 8

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  str.chars.map! { |char| CONSONANTS.include?(char.downcase) ? char * 2 : char}.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""


# 9
def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345)

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
=end
# 10

def center_of(str)
  is_length_even = str.length.even?
  str_by_2 = (str.length / 2)
  if is_length_even
    str[(str_by_2 - 1)..(str_by_2)]
  else
    str[str_by_2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'