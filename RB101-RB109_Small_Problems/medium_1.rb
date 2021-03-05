# 1
=begin
def rotate_array(arr)
  new_arr = arr.clone
  new_arr.append(new_arr[0])
  new_arr.shift
  new_arr
end
array = [7, 3, 5, 2, 9, 1]
p rotate_array(array)
p array

# or 

def rotate_array2(arr)
  new_arr = []
  arr.each do |item|
    next if item == arr[0]
    new_arr << item
  end
  new_arr.append(arr[0])
  new_arr
end

# or LS way

def rotate_array3(arr)
  arr[1..-1] + [arr[0]]
end
array = [7, 3, 5, 2, 9, 1]
p rotate_array3(array)
p array

# 2
require 'pry'
def rotate_rightmost_digits(int1, int2)
  str_arr = int1.to_s.chars
  num = str_arr.delete_at(-int2)
  str_arr.append(num).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# 3

def max_rotation(int)
  counter = int.to_s.length
  num = int
  until counter == 0
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# 4
require 'pry'

def lights_on(num)
  arr = []
  counter = 0
  num.times { arr << false }
  until counter > num
    counter += 1
    arr.map!.with_index do |item, index| 
      (index + 1) % counter == 0 ? !item : item
    end
  end
  arr.map!.with_index { |item, index| item == true ? (index + 1) : item }
  arr.select { |item| item != false}
end

p lights_on(1000)

# 5

def diamond(num)
  arr = (1..num).step(2).to_a
  arr.concat(arr.reverse.slice(1..-1))
  arr.each { |int| puts ("*" * int).center(num)}
end

# diamond(263)

# 6
require 'pry'
def minilang(str)
  register_value = 0
  stack_arr = []
  stack_arr.split.each do |stack|
    case
    when stack == "PUSH" then stack_arr.push(register_value)
    when stack == "PRINT" then puts "#{register_value}"
    when stack == "MULT" then register_value = stack_arr[-1] * register_value
    when stack.to_i.to_s == stack.to_s then register_value = stack.to_i
    when stack == "ADD" then register_value += stack_arr.pop
    when stack == "SUB" then register_value -= stack_arr.pop
    when stack == "DIV" then register_value /= stack_arr.pop
    when stack == "MOD" then register_value = register_value.remainder(stack_arr.pop)
    when stack == "POP" then register_value = stack_arr.pop
    end
    # binding.pry
  end
end

minilang('6 PUSH')

# 7

DIGITS = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
"seven" => 7, "eight" => 8, "nine" => 9, "zero" => 0}


def word_to_digit(str)
  str.gsub(/'#{DIGITS.keys.join}'/, DIGITS)
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')

# 8

def fibonacci(int)
  if int <= 2
    1
  else
    fibonacci(int - 1) + fibonacci(int - 2)
  end
end
p fibonacci(100)
=end
# 9 

def fibonacci_proc(num)
  return 1 if num <= 2
  arr = [1,1]
  until arr.size == num
    arr.push(arr[-2] + arr[-1])
  end
  arr[-1]
end

# p fibonacci_proc(100001)

# 10

def fibonacci_last(num)
  return 1 if num <= 2
  arr = [1,1]
  until arr.size == num
    arr.push((arr[-2] + arr[-1]))
  end
  arr
end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(40)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789)

# 1 1 2 3 5 8 13 21 34