#Improved ask method. Try to clean it up by removing the answer variable. You’ll
#have to use return to exit from the loop. (Well, it will get you out of the
#whole method, but it will get you out of the loop in the process.) How do
#you like the resulting method? I usually try to avoid using return (a personal
#preference), but I might make an exception here.
def ask question
	while true
	puts question
	reply = gets.chomp.downcase
	if reply == 'yes'
		return true
	end
	if reply == 'no'
		return false
	end
	puts 'Please answer "yes" or "no".'
	end
end
puts(ask('Do you like eating tacos?'))

#Old-school Roman numerals. In the early days of Roman numerals, 9 was
#written “VIIII,” and so on. 
#Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper oldschool Roman numeral. 
#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

def old_roman_numeral num
	raise 'Must use positive integer' if num <= 0
	roman = ''
	roman << 'M' * (num / 1000)
	roman << 'D' * (num % 1000 / 500)
	roman << 'C' * (num % 500 / 100)
	roman << 'L' * (num % 100 / 50)
	roman << 'X' * (num % 50 / 10)
	roman << 'V' * (num % 10 / 5)
	roman << 'I' * (num % 5 / 1)
	roman
	end
puts(old_roman_numeral(1999))

# “Modern” Roman numerals. Eventually, someone thought it would be terribly
# clever if putting a smaller number before a larger one meant you
# had to subtract the smaller one. As a result of this development, you must
# now suffer. Rewrite your previous method to return the new-style Roman
# numerals so when someone calls roman_numeral 4, it should return 'IV'.

def roman_numeral num
thous = (num / 1000)
hunds = (num % 1000 / 100)
tens = (num % 100 / 10)
ones = (num % 10 )
roman = 'M' * thous

if hunds == 9
	roman = roman + 'CM'
elsif hunds == 4
	roman = roman + 'CD'
else
	roman = roman + 'D' * (num % 1000 / 500)
	roman = roman + 'C' * (num % 500 / 100)
end

if tens == 9
	roman = roman + 'XC'
elsif tens == 4
	roman = roman + 'XL'
else
	roman = roman + 'L' * (num % 100 / 50)
	roman = roman + 'X' * (num % 50 / 10)
end

if ones == 9
	roman = roman + 'IX'
elsif ones == 4
	roman = roman + 'IV'
else
	roman = roman + 'V' * (num % 10 / 5)
	roman = roman + 'I' * (num % 5 / 1)
end
	
	roman
end

puts(roman_numeral(1999))