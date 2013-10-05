# Week 1 Quiz

# Question 1: 
# a = 1

# Question 2: 
# What's the difference between an Array and a Hash?
# Array is an ordered set of  elements. Hash is a set of key + value pairs, not ordered, with each symbol representing certain characters or a number.

# Question 3:
# Every Ruby expression returns a value. Say what value is returned in the below expressions:
# arr = [1, 2, 3, 3]
# [1, 2, 3, 3].uniq = [1, 2, 3]
# [1, 2, 3, 3].uniq! = [1, 2, 3]

# Question 4:
# What's the difference between the map and select methods for the Array class? Give an example of when you'd use one versus the other. 
# Map transforms the existing array. 
# The map method return an array of values returned by the block. 
# The select method will return the actual values being iterated over if the block evaluates to true. 

# arr.map { |e| (1..5).include?(e) }# get true-false list
# arr.select { |e| (1..5).include?(e) } # get elements from arr

# Question 5
# Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?
h = {a: 'cat', b: 'dog', c: 'monster'}
puts h[:a]

# Question 6
# What is returned?
# x = 1
# x.odd? ? "no way!" : "yes, sir!"

# "no way!"

# Question 7
# What is x?
# x = 1
# 3.times do
#   x += 1
# end
# puts x

# x = 4

# Question 8
# What is x?
# 3.times do
#   x += 1
# end
# puts x

# Error.