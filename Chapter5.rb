# 1. Full name greeting 
# write a program that asks for a person's first name, then middle, and the last. Finally, it should greet the person using their full name.
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your full name is " + first_name + " " + middle_name+ " "  + last_name + "."
# 2. Bigger, better favorite number
# - write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better favorite number.
puts "What is your favorite number?"
favorite_number = gets.chomp
puts "Your new bigger and better favorite number is " + (favorite_number.to_i + 1).to_s + "."