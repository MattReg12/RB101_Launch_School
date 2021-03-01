# 1
=begin

def interleave(arr1, arr2)
  new_arr =[]
  arr1.each_with_index do |item, index|
    new_arr << item << arr2[index]
  end
  new_arr
end



def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

# 2
require 'pry'
def letter_case_counter(str)
  hash = Hash.new(0)
  str.chars.each do |item|
    case
    when item =~ /[^a-zA-Z]/ then hash[:neither] += 1
    when item.upcase == item then hash[:uppercase] += 1
    when item.downcase == item then hash[:lowercase] += 1
    end
  end
  hash
end

p letter_case_counter('abCdef 123')


# 3

def word_cap(str)
  str.split.each { |item| item.capitalize!}.join(" ")
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')

# 4

  def swapcase(str)
    arr = str.chars.map do |item| 
      item =~ /[a-z]/ ? item.upcase : item.downcase
    end
    arr.join
  end

  p swapcase('CamelCase')
  p swapcase('Tonight on XYZ-TV')

# 5
require 'pry'

def staggered_case(str)
  new_str = ''
  str.chars.map.with_index do |item, index|
    index.odd? ? item.downcase : item.upcase
  end.join
end
num = 0
p staggered_case('ignore 77 the 444 numbers',num)

# 6

def multiplicative_average(arr)
  format("%0.3f", arr.reduce(&:*) / arr.size.to_f)
end

p multiplicative_average([2, 5, 7, 11, 13, 17])
p multiplicative_average([3,5])

# 7

def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |num, index|
    new_arr << num * arr2[index]
  end
  new_arr
end

def multiply_list(arr1, arr2, arr3)
  new_arr = []
  arr1.zip(arr2,arr3) { |num| new_arr << num[0] * num[2]}
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11], [2,2,2])


# 8

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |num|
    arr2.each do |num2|
      new_arr << num * num2
    end
  end
  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
=end
# 9

def penultimate(str)
  str.split[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')