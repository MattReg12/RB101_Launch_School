# Question 1
=begin
if false
  greeting = "hello world"
end
greeting

# The point here is that it doesnt throw an exception
# it equates to nil. even if the local variable did not
# get initialized, it gets set to nil through the if statement

# Question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << " there"
p greetings[:a].object_id
p informal_greeting.object_id

# references same object, << mutates the object

# Question 3

# A)    

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# 1 is 1, 2 is 2, 3 is 3

# B) 

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# 1 is 1, 2 is 2, 3 is 3

#C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# 1 is 2, 2 is 3, 3 is 1
=end
#4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    return false
  else
    while dot_separated_words.size > 0
      word = dot_separated_words.pop
      next unless (1..255).cover?(word) == false
      return false
    end
  end
  return true
end   

p dot_separated_ip_address?("1.2.3.4")