require 'pry'

def say(msg)
  puts "=> #{msg}" #convert numbers to string and print
end

puts "What's the first number?"
num1 = gets.chomp

puts "What's the second number?"
num2 = gets.chomp

say "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4'
  result = num1.to_f / num2.to_f
else 
  result = 'Type a number between 1 and 4.'

end

puts result