# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |element|
  puts element
end

# 2. Same as above, but only print out values greater than 5.
arr.each do |element|
  puts element if element > 5 
end

# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.
newarr = arr.select do |e|
  e.odd?
end

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
arr << 11
arr.unshift 0 #PREPENDS

# 5. Get rid of "11". And append a "3".
arr.pop # pop removes the last element permanently
arr <<3

# 6. Get rid of duplicates without specifically removing any one value. 
puts arr.uniq # doesn't mutate the caller
puts arr.uniq! # mutates the caller

# 7. What's the major difference between an Array and a Hash?
# Array is an ordered set of  elements. Hash is a set of symbols, not ordered, with each symbol representing certain characters or a number.

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
# Ruby 1.8
h = {:a => 2, :b => 3, :c => 4}
# Ruby 1.9
h = {a:1, b:2, c:3, d:4}

# Suppose you have a h = {a:1, b:2, c:3, d:4}

# 9. Get the value of key "b".
puts h[:b]

# 10. Add to this hash the key:value pair {e:5}
h[:e] = 5

# 13. Remove all key:value pairs whose value is less than 3.5
h.each do |key, value|
  if value <3.5
    h.delete(key)
  end
end

h.delete_if {|key, value| value < 3.5}

# 14. Can hash values be arrays? Can you have an array of hashes? (give examples)
h[:f] = [11, 12, 13, {x:"hi", y: "there"}]
puts h

puts h[:f][3][:x] # nested array

# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
# http://ruby-doc.org/ is my favorite, because it's recommended by Chris Lee... Well, I find it to be most comprehensive of all.
