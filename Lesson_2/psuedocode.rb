=begin

keyword	meaning
START	start of the program
SET	sets a variable we can use for later
GET	retrieve input from user
PRINT	displays output to user
READ	retrieve value from variable
IF / ELSE IF / ELSE	show conditional branches in logic
WHILE	show looping logic
END	end of the program

For example, write out pseudo-code (both casual and formal) that does the following:

1) a method that returns the sum of two integers
2) a method that takes an array of strings, and returns a string that is all those strings concatenated together
3) a method that takes an array of integers, and returns a new array with every other elem

#1
take 2 parameters as integers
add both parameters together
return the result

START
  SET first number 
  SET second number 
  return first number + second number
END

# 2
Receive an array of strings
take first string in the array and set it as a new string
concatenate next string in the array to the new string
return the value of the new string

START
  SET array_of_strings
  SET new_string = empty string
  concat each element of array_of_strings to new_string
  return new_string
END

# 3
Receive an array_of_ints
create a new empty_array
itereate through each element
add 1st element array_of_ints to empty_array
skip 2nd element 
add 3rd element array_of_ints to empty_array
repeat this process

START
  SET array_of_ints
  SET new_array_of_ints = []
  if index number % 2 != 0 
  push array_of_ints to new_array_of its
  else
    next
  return new_array_of_ints
END
=end
