# 1

loop do
  puts 'Just keep printing...'
  break
end

   
# 2

loop do
  puts 'this is the outer loop'
  loop do
    puts 'this is the inner loop'
    break
  end
  break
end

# 3

iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

# 4

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
end


# 5

say_hello = true
iterations = 0

while say_hello
  puts 'Hello!'
  iterations += 1
  say_hello = false if iterations == 5
end


# 6

numbers = []

while numbers.size < 5
  numbers << rand(100)
end
puts numbers

# 7

count = 1

until count == 11
  puts count
  count += 1
end

# 8

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end


# 9

for i in 1..100
  puts i if i.odd?
end

# 10

friends = %w(Sarah John Hannah Dave)

for names in friends
  puts "Hello, #{names}!"
end

