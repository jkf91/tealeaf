# "99 Bottles of Beer on the Wall"
number = 99
while number != 1
	puts number.to_s + " bottles of beer on the wall, " + number.to_s + " bottles of beer. Take one down and pass it around," + (number-1).to_s + " bottles of beer on the wall."
    number = number - 1
end
puts "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."

# "Deaf Grandma"
puts "Say something to your Deaf Grandma"
while (said = gets.chomp) != "BYE" #YOU CAN'T STOP TALKING TO GRANDMA UNTIL YOU SAY "BYE" WITH AN ENTER AT THE END
	if said != said.upcase
		puts "HUH?! SPEAK UP, SONNY!" #unless you shout (i.e., all cap letters)
	else 
		puts "NO, NOT SINCE " + (1930+rand(21)).to_s + "!" #IF you shout; HAVE A GRANDMA SHOUT A RANDOM DIFFERENT YEAR BETWEEN 1930 AND 1950 EACH TIME
	end
end

#Deaf Grandma extended; BYE -> she pretends not to hear you. You now have to say BYE three times in a row.
bye = 0
puts "Say something to your Deaf Grandma"
while bye < 3 #YOU CAN'T STOP TALKING TO GRANDMA UNTIL YOU SAY "BYE" WITH AN ENTER AT THE END
	said = gets.chomp
	if said != said.upcase
		bye = 0
		puts "HUH?! SPEAK UP, SONNY!" #unless you shout (i.e., all cap letters)
	elsif said != "BYE" && said == said.upcase
		bye = 0
		puts "NO, NOT SINCE " + (1930+rand(21)).to_s + "!" #IF you shout; HAVE A GRANDMA SHOUT A RANDOM DIFFERENT YEAR BETWEEN 1930 AND 1950 EACH TIME
	elsif said == "BYE"
		bye = bye + 1
		puts "I CAN'T HEAR YOU!"
	end
end

#Write a program that asks for a starting/end year and then puts all the leap years between them

puts "Enter the starting year."
s_year = gets.chomp
s_year = s_year.to_i
puts "Enter the end year."
e_year = gets.chomp
e_year = e_year.to_i

# Is starting year a leap year? If yes, print it.
if s_year%4 > 0
	firstis_leap = 0
elsif s_year%4 == 0
	firstis_leap = 1
	if s_year%100 == 0
		firstis_leap = 0
		if s_year%400 == 0
			firstis_leap = 1
		end
	end
end

# Check all years between the first leap year and the last year. Print those that are leap years.
puts 
puts "The leap years are:"
if firstis_leap == 1
	puts s_year
end
year = s_year
while year <= e_year
	year = year + 1 # Check all years, starting from s_year + 1
	if year%4 > 0 # Not dividible by 4 means not a leap year.
		year_leap = 0
	elsif year%4 == 0 # Dividible by 4 means it may be a leap year.
		year_leap = 1
		if year%100 == 0 # Dividible by 100 means it's NOT a leap year.
			year_leap = 0
			if year%400 == 0 # Unless divisible by 400
				year_leap = 1
			end
		end
	end
	if year_leap == 1 # if it's a leap year, print
		puts year
	end
end
