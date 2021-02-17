# 1
=begin
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
f_hash = {}
flintstones.each_with_index { |item, index|  f_hash[item] = index }
p f_hash

# 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.sum

# 3

ages.each do |key, value|
  if value > 100
    ages.delete(key)
  end
end
p ages

# 4

 p ages.values.sort[0]

# 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Beverly)
variable = nil
flintstones.each_with_index do |item, index|
  break if variable != nil
  if item[0] + item[1] == "Be"
    variable = index
  end
end
p variable

# 6

flintstones.map! { |item| item[0,3] } 
p flintstones

# 7
statement = "The Flintstones Rock"

new_hash = statement.split(//).to_h { |letter| [letter, statement.count(letter)] }

p new_hash

# 8

# 9

def titleize(str)
  str.split.map! { |item| item.capitalize }.join(" ")
end

p titleize("the red fern grows")
=end
 #10

 require 'pry'
 munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



munsters.each do |key, value|
  # binding.pry
  case value["age"]
  when 0...18
    value["age_group"] = "kid"
  when 18...65
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munsters
