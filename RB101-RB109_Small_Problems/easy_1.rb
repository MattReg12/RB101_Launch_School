require 'pry'

# Question 1
=begin
def repeat(string, int)
  puts (string + "\n") * int
end

repeat("Help", 5)

# Question 2

def is_odd?(int)
  int % 2 != 0
end

p is_odd?(-3)

# Question 3

def digit_list(int)
  int.to_s.chars.map(&:to_i)
end

p digit_list(12355)


# Question 4

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'CAR'
]

def count_occurences(arr)
  new_arr = arr.clone # avoid destruction
  while new_arr.size > 0
     puts "#{new_arr[0]} => #{new_arr.count(new_arr[0])}" # outputs count of the object
     new_arr.delete(new_arr[0]) # removes all copies of object from array
  end
end

count_occurences(vehicles)
puts vehicles

# Question 5
# i didnt know reverse method was a thing
def reverse_sentence(str)
  new_str = ''
  str_arr = str.split()
  str_arr.count.times  {new_str << str_arr.pop + " "}
  new_str
end

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

# Question 6

def reverse_words(str)
  arr = str.split
  arr.each { |item| item.reverse! if item.length >= 5}
  arr.join(" ")
end
p reverse_words("Walk around the block")



# Question 7

def stringy(int)
  str_return = ''
  if int.even?
    (int/2).times {str_return << "10"}
    str_return
  else
    (int/2).times {str_return << "10"}
    str_return + "1"
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Question 8

def average(arr)
  avg = 0
  arr.map { |item| avg += (item.to_f / arr.size) }
  avg
end

p average([10,20,30,40])


# Question 9

def sum(int)
  int.to_s.split(//).map { |item| item.to_i }.sum
end

p sum(123_45_666)
=end
# 10

def calculate_bonus(amount,gets_bonus)
  gets_bonus ? amount / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000