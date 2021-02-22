
# 1
=begin
def ascii_value(str)
  str.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')


#2

def time_of_day(int)
  int += 1440 until int > 0
  hour, minute = int.divmod(60)
  hour -= 24 until hour < 24
  ("%02d" % hour) + ":" + ("%02d" % minute)
end
p time_of_day()


#3

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440
def after_midnight(time_string)
  return 0 if time_string == "24:00"
  (time_string[0,2].to_i * MINUTES_PER_HOUR) + time_string[3,2].to_i
end

def before_midnight(time_string)
  return 0 if time_string == "24:00" || time_string == "00:00"
  MINUTES_PER_DAY - after_midnight(time_string)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# 4
require 'pry'

def swap(str)
  arr = str.split.map do |item|
    placeholder = item[0].clone
    item[0] = item[-1]
    item[-1] = placeholder
    item
  end
  arr.join(" ")
end

# 5

def cleanup(str)
  str.gsub!(/[^A-Za-z0-9]/," ").squeeze!(" ")
  str
end

p cleanup("---what's my +*& line?")

# 6 

def word_sizes(str)
  arr = str.split.map { |item| item.size}
  return_hash = arr.each_with_object({}) do |item, hash|
    hash[item] = arr.count(item)
  end
  return_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# 7

def word_sizes(str)
  str.gsub!(/[^a-zA-Z0-9 ]/, "")
  hash = Hash.new(0)
  str.split.each do |item|
    hash[item.size] += 1
  end
  hash 
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# 8

DIGIT_NAMES = {
  0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 
  7 => "seven", 8 => "eight", 9 => "ten", 10 => "ten", 11 => "eleven", 12 => "twelve",
  13 => "thirten", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
  18 => "eighteen", 19 => "nineteen"
}

def alphabetic_number_sort(arr)
  arr.sort_by! { |item| DIGIT_NAMES[item]}
  arr
end

p alphabetic_number_sort((0..19).to_a)

# 9

def crunch(str)
  new_arr = []
  str.chars.each do |item|
    new_arr << item if item != new_arr.last
  end
  new_arr.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
=end

# 10 

def print_in_box(string)
padding_top_bottom = "-" * string.length
padding_middle = " " * string.length
p "+ #{padding_top_bottom} +"
p "| #{padding_middle} |"
p "| #{string.center(string.length)} |"
p "| #{padding_middle} |"
p "+ #{padding_top_bottom} +"
end

print_in_box("cocknballs.com")

# I am PROUD of that one

# 11
# Im saying no because split returns an array. 
# tim = "hello world"

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# tom = spin_me("hello world")
# p tom
# p tim.object_id
# p tom.object_id