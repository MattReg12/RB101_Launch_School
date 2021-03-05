# 1
=begin
def display_greetings(arr, hash)
  puts "Hello #{arr.join(" ")}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

display_greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# 2
require 'pry'

def twice(int)
  str_int = int.to_s
  return int * 2 if str_int.length == 1
  if str_int.slice(0..(str_int.length/2 - 1)) == str_int.slice(str_int.length/2..-1)
    int
  else
    int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# 3

def negative(int)
  int.abs * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby


# 4

def sequence(int)
  (1..int).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# 5

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# 6

def word_lengths(str)
  str.split.map do |word|
    word + " #{word.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

# 7

def swap_name(str)
  str.split.reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'


# 8

def sequence(int1, int2)
  int1 == 0 ? arr = [] : arr = [int2]
  (int1 - 1).times do
    arr << arr[-1] + int2
  end
  arr
end
    
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# 9

def get_grade(int1, int2, int3)
  avg = (int1 + int2 + int3 ) / 3
  case 
  when avg >= 90 then "A"
  when avg >= 80 && avg < 90 then "B"
  when avg >= 70 && avg < 80 then "C"
  when avg >= 60 && avg < 70 then "D"
  else "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# 10

def buy_fruit(arr)
  new_arr = []
  arr.each do |sub_arr|
    sub_arr[1].times do 
      new_arr << sub_arr[0]
    end
  end
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
=end

# 11

def words(arr)
  storage_hash = {}
  arr.each do |str|
    unless storage_hash.has_key?(str.chars.sort)
      storage_hash[str.chars.sort] = [str]
    else
      storage_hash[str.chars.sort] << str
    end
  end
  storage_hash.each_value { |value| p value}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p words(words)