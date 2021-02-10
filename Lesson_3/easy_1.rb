# Question 1
=begin
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Id expect [1,2,3] but I was wrong because it doesnt mutate the caller

# Question 2

# 1   Not equal.  Use in conditionals
# 2   Not user_name or user name is false
# 3   indicates the method mutates the caller
# 4   ternary operator?
# 5   usually a method that is asking if something is in an object
# 6   turns into a boolean 

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
new_advice = advice.split
new_advice[6] = "urgent"
advice = new_advice.join(" ")
p advice

# got burned here.  use gsub method

# Question 4

# 1  deletes at index positions   [1,3,4,5]
# 2  deletes a specific value if applicable [2,3,4,5]

# Question 5

p 42 > 10 && 42 < 100
p (10..100).include?(42)
# Can also use   cover?  method

# Question 6

famous_words = "seven years ago..."

#famous_words.insert(0, "Four score and ")
p famous_words
famous_words = "Four score and " + famous_words
p famous_words

# can also use the prepend method

# Question 7

flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten!
p flintstones
=end
# finally got one how they expected it!!

# Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flint_arr = [flintstones["Barney"], flintstones.key(2)]
p flint_arr

# fucking annoying, they say dont method hunt but I dont know all of these obscure methods.  
# assoc  is the correct method to use.

