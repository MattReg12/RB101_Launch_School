# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.has_key?("Spot")
p ages.any? { |key,value| key == 32 || value == 32}
p ages.fetch("Spot") {"not here, sorry"}

# Question 2

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

# Question 4

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include? "Dino"

# they used match?

# Question 5

flintstones = %w(Fred Barney Wilmey Betty BamBam Pebbles)

# Question 6

#flintstones.push("Dino") # or flintstones << "Dino"
#p flintstones

# Question 7

flintstones.insert(-1, "Dino", "Hoppy")
p flintstones

# They used flintstones.push('Dino').push('Hoppy') or 
# flintstones.concat(%w(Dino Hoppy))

# Question 8

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0..38)

# they used index method to determine the index start of house

# Question 9

statement = "The Flintstones Rock!"

p statement.count('t')

# Question 10

title = "Flintstone Family Members"

p title.center(40)