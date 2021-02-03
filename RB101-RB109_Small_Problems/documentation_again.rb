# exercise 1
# understood

# exercise 2
# -4712-01-01 - Default value is -4712 for some reason, then Jan 01
# 2016-01-01
# 2016-05-01
# 2016-05-13

# exercise 3

# i think this is going to through an error because 4 arguments is not optional
# i was wrong. its located method call section under arguments

# exercise 4

a = [1, 4, 8, 11, 15, 19]
puts a.bsearch { |x| x > 8}

# exercise 5
# error
# 'beats me'
# 49

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# exercise 6
# im guessing 5 8 
5.step(to: 10, by: 3) { |value| puts value }

# exercise 7

a = 'abc'
a.public_methods(false).inspect

#you can search or keep going up to parent classes

# exercise 8

# could not access 2.4 so had to use currect
a.min(2)

# exercise 9

searched and found psych module
