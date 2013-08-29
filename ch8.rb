# Write the program that asks us to type as many words as we want (one word per line, continuing until we just press Enter on an empty line) 
# and then repeats the words back to us in alphabetical order.
# Make sure to test your program thoroughly; for example, does hitting Enter on an empty line always exit your program? Use Sort.

words = []
response = 'nil'

puts 'Please enter a word.'

while response != ''
	response = gets.chomp
    words.push response
end
 
puts words.sort

# Table of contents, revisited. Rewrite your table of contents program on page 32. 
# Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on).
# Then print out the information from the array in a beautifully formatted table of contents. 

contents = []
contents.push 'Table of Contents'.rjust(40)
contents.push ''
contents.push 'Chapter 1: Getting Started'.ljust(50) + 'page 1'.ljust(7)
contents.push 'Chapter 2: Numbers'.ljust(50) + 'page 9'.ljust(7)
contents.push 'Chapter 3: Letters'.ljust(50) + 'page 13'.ljust(7)
puts contents