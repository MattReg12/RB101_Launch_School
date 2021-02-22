# 1
=begin
def short_long_short(str1, str2)
  str1.length > str2.length ? (str2 + str1 + str2) : (str1 + str2 + str1)
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')


# 2

def century(int)
  century_calc = (int.to_f/100).ceil
  suffix = num_suffix_calculator(century_calc)
  "#{century_calc}#{suffix}"
end

def num_suffix_calculator(int)
  str_int = int.to_s
  case
  when str_int[-2] == "1"
    "th"
  when str_int[-1] == "1"
    "st"
  when str_int[-1] == "2"
    "nd"
  when str_int[-1] == "3"
    "rd"
  else
    "th"
  end
end

# 3 & 4

def leap_year?(int)
  if int <= 1752 && (int % 4) == 0
    true
  elsif int.remainder(400) == 0
    true
  elsif int.remainder(100) == 0
    false
  else
    int % 4 == 0
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1)
p leap_year?(100)
p leap_year?(400)

# 5

def multisum(int)
  arr = [3,5]
  sum_arr = []
  arr.each do |item|
    (1..int).each { |num| sum_arr << num if num.remainder(item) == 0}
  end
  sum_arr.uniq!.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)

# 6

def running_total(arr)
  counter = 0
  arr.map { |num| counter += num }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])


#7 & 8

num_hash = {
  "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
}

def remove_and_return_sign(str)
  if str.include?("+")
    str.delete!("+")
    1
  elsif str.include?("-")
    str.delete!("-")
    -1
  else
    1
  end
end

def string_to_int(str, hash)
  arr = []
  sign = remove_and_return_sign(str)
  counter = 1
  str.chars.reverse.each do |item|
    arr << (hash[item] * counter)
    counter *= 10
  end
  arr.sum * sign
end

p string_to_int("+11234", num_hash)
=end
# 9
require 'pry'

DIGITS = {
  1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5",
  6 => "6", 7 => "7", 8 => "8", 9 => "9", 0 => "0"
}

# def int_length_calc(int)
#   counter = 0
#   break_limit = 2.0
#   divider = 10.0 
#   until break_limit < 1
#     break_limit = int/divider
#     counter += 1
#     divider *=10
#   end
#   counter
# end


# def integer_to_string(int)
#   num_of_divisions = int_length_calc(int)
#   divisor = 10 ** (num_of_divisions - 1)
#   arr = []
#   num_of_divisions.times do 
#     arr << DIGITS[int/divisor]
#     int -= divisor * (int/divisor)
#     divisor /= 10
#   end
#   arr.join
# end
    
# p integer_to_string(9872)
# I got wrecked here.  Try using divmod

def integer_to_string(int)
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend DIGITS[remainder]
    break if int == 0
  end
  result
end


# def int_to_string(int)
#   return "0" if int == 0
#   ret_str = ''
#   is_negative = int < 0
#   int *= -1 if is_negative
#   loop do
#     int, remainder = int.divmod(10)
#     ret_str.prepend DIGITS[remainder]
#     break if int == 0
#   end
#   is_negative ? "-" + ret_str : "+" + ret_str
# end



def signed_int_to_string(int)
  return "0" if int == 0
  is_negative = int < 0
  int *= -1 if is_negative
  ret_str = integer_to_string(int)
  is_negative ? "-" + ret_str : "+" + ret_str
end

p signed_int_to_string(-0)