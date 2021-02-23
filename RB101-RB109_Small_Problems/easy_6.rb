# 1
=begin
SECONDS_PER_CIRCLE = 3600
MINUTES_PER_CIRCLE = 60
DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i
  total_seconds = SECONDS_PER_CIRCLE * (float - float.to_i)
  minutes, seconds = (total_seconds).divmod(MINUTES_PER_CIRCLE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  # "(#{degrees}#{DEGREE}#{"%02d" % minutes}'#{"%02d" % seconds}\")"
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) ==s %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# 2
require 'pry'

def remove_vowels(arr)
  arr.map! do |item|
    item = item.chars.keep_if { |letter| letter =~ /[^aeiouAEIOU]/}
    item.join
  end
  arr
end

def remove_vowels(arr)
  arr.map { |string| string.delete('aeiouAEIOU')}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


#3

def find_fibonacci_index_by_length(int)
  divisor = 10 ** (int - 1)
  fib_arr = [1,1]
  last_sum = fib_arr[-1] + fib_arr[-2]
  until last_sum / divisor == 1
    fib_arr.push(last_sum)
    last_sum = fib_arr[-1] + fib_arr[-2]
  end
  fib_arr.size + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# 4

def reverse_array(arr)
  new_arr = []
  arr.size.times { |item| new_arr << arr.pop}
  new_arr.size.times { |item| arr << new_arr.shift}
end


my_array = [1,2,3,4,5]
p my_array
p my_array.object_id
reverse_array(my_array)
p my_array
p my_array.object_id


# 5

def reverse(arr)
  counter = -1
  new_arr = []
  arr.size.times do |item|
    new_arr << arr[counter]
    counter -= 1
  end
  new_arr
end
my_array = [1,2,3,4,5]
my_new_array = reverse(my_array)
p my_array
p my_new_array

# 6

def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# or 

def merge(arr1, arr2)
  arr1 | arr 2
end


# 7


# def halvsies(arr)
#   arr.size.odd? ? num = arr.size/2 : num = (arr.size/2) - 1
#   arr.partition { |item| arr.index(item) <= num }
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# 8

def find_dup(arr)
  arr.find_all { |item| arr.count(item) == 2 }[0]
end


p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])
p find_dup([1, 5, 3, 1])

# 9 

def include?(arr, value)
  arr.any?(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
=end
# 10

def triangle(int)
  counter = int - 1
  int.times do 
    puts "#{" " * counter}#{"*" * (int - counter)}"
    counter -= 1
  end
end

triangle(5)