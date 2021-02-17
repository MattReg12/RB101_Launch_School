=begin
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(hash)
  new_hash = hash.select { |key, value| value == "Fruit" }
  new_hash
end

p select_fruit(produce)

def double_numbers!(numbers)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
end
numbers = [3,4,5,6]
double_numbers!(numbers)
p numbers


numbers = [3,4,5,6]
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p double_odd_numbers(numbers)

def multiply(numbers, int)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= int
    counter += 1
  end
end
numbers = [3,4,5,6]
double_numbers!(numbers)
p numbers

=end

def select_letter(string, selector)
  new_string = ''
  counter = 0

  loop do
    break if counter == string.size
    new_string << string[counter] if string[counter] == selector
    counter +=1
  end
  new_string
end

p select_letter("cock n balls", "k" )