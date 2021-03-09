# 1
=begin
def file_to_sentence_arr(file)
  file_data = File.open(file).read.split(/[!?.]/)
  file_data.map { |sentence| sentence.split }.max_by { |x| x.length }.join(" ")
end

def longest_sentence(file)
  hash = {}
  sent_arr = file_to_sentence_arr(file)
  sent_arr.each { |sentence| hash[sentence.length] = sentence.join(" ")}
  hash[hash.keys.max]
end

# p file_to_sentence_arr('pg84.txt')

# 2

BLOCK_HASH = { "A" => ["N","A"], "B" => ["B","O"], "C" => ["C","P"], "D" => ["D","Q"], 
"E" => ["E","R"], "F" => ["F","S"], "G" => ["G","T"], "H" => ["H","U"], "I" => ["I","V"], "J" => ["J","W"],
"K" => ["K","X"], "L" => ["L","Y"],  "M" => ["M","Z"], "N" => ["N","A"], "O" => ["O","B"], "P" => ["P","C"],
"Q" => ["Q","D"], "R" => ["R","E"], "S" => ["S","F"], "T" => ["T","G"], "U" => ["U","H"], "V" => ["V","I"],
"W" => ["W","J"], "X" => ["X","K"], "Y" => ["Y","L"], "Z" => ["Z","M"]}

ALPHABET = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)



def block_word?(str)
  original_block_arr = str.upcase.chars
  final_block_arr = str.upcase.chars
  str.chars.each do |letters|
    BLOCK_HASH[letters.upcase].each do |chars| 
      if original_block_arr.include?(chars) && final_block_arr.delete(chars) == nil
        return false
      else next
      end
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# BIG OOOOFFFF. They used none? and count method. didnt know count method worked this way

# 3

def letter_percentages(str)
  return_hash = {}
  length = str.length
  return_hash[:lowercase] = ((str.count('/[a-z]/') / length.to_f) * 100).to_i
  return_hash[:uppercase] = ((str.count('/[A-Z]/') / length.to_f) * 100).to_i
  return_hash[:neither] = 100 - return_hash[:uppercase] - return_hash[:lowercase]
  return_hash
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')


# 4


def balanced?(str)
  arr = str.chars.select { |char| char == "(" || char == ")"}
  (arr.length / 2).times { arr = arr.join.split("()")}
  arr.size == 0
end

p balanced?("()()()((()))()()(())")

# p balanced?('What (is) this?')
# p balanced?('What is) this?')
# p balanced?('What (is this?')
# p balanced?('((What) (is this))?')
# p balanced?('((What)) (is this))?')
# p balanced?('Hey!')
# p balanced?(')Hey!(')
# p balanced?('What ((is))) up(')


# 5

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  case
  when arr[0] + arr[1] <= arr[2] || arr.include?(0) then :invalid
  when arr.uniq.size == 3 then :scalene
  when arr.uniq.size == 2 then :isoceles
  else :equilateral
  end
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)

# 6

def triangle(side1, side2, side3)
  arr = [side1, side2, side3]
  case 
  when arr.sum != 180 then :invalid
  when arr.any? { |angle| angle <= 0} then :invalid
  when arr.any? { |angle| angle == 90} then :right
  when arr.all? { |angle| angle < 90} then :acute
  else :obtuse
  end
end 

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid


# 7
require 'date'

def friday_13th(year)
Date.new(year).step(Date.new(year,-1,-1)).select { |d| d.friday? && d.mday == 13}.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# 8

def featured(int)
  storage_arr = []
  number = int + 1
  until storage_arr.size == 1
    case
    when number.even? then number += 1
    when number % 7 != 0 then number += 1
    when number.to_s.chars.uniq != number.to_s.chars then number += 1
    else storage_arr.push(number)
    end
  end
  storage_arr[0]
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987


# 9

def bubble_sort!(array)
  counter = 1
  until counter == 0
    counter = 0
    array.each_with_index do |item, index|
      if array[index + 1] != nil && item > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        counter += 1
      end
    end
  end
  array
end

p bubble_sort!([5,3])
p bubble_sort!([6, 2, 7, 1, 4])
=end
# 10

def sums(int)
  return 1 if int == 1
  int = int + sums(int - 1)
end

def products(int)
  return 1 if int == 1
  int = int**2 + products(int- 1)
end

def sum_square_difference(int)
  sums(int)**2 - products(int)
end

p sum_square_difference(3)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150