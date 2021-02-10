# Question 1
=begin
10.times { |x| puts (" " * x) + "The Flintstones Rock" }


# Question 2

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"


# cant convert int to string automatically bruh

# Question 3

def factors(number)
  return puts "Sorry but this does not compute factors of negative numbers or 0" if number <= 0
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  factors
  end
end

# Bonus 1  This tells you if its a factor or not.. i.e. is it evenly divisible

# Bonus 2  To return what the method is actually calculating

# Question 4

# Yes, assignement does not mutate the caller also you are going to have nested
# arrays here. 

# Question 5
# Local variables are not accessible in a method definition
limit = 15

def fib(first_num, second_num,counter)
  while first_num + second_num < counter
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Question 6

# assignement does not mutate the caller,   34
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Question 7
# Yes because hash#[] is actually a method that mutates the caller

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
p munsters
=end

# Question 8

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

p rps("rock", "paper")

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# PAPER

# Question 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# NO