# Blackjack game
require 'pry'

puts "Welcome to Blackjack!"

# Create deck

suits = ['H', 'D', 'S', 'C']
numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
# Method 1: use product method
deck = suits.product(numbers)
# # Method 2: use each method
# deck = []
# suits.each do |suit|
#   numbers.each do |number|
#     deck << [suit, number]
#   end
# end
deck.shuffle!

# Deal two cards to start the game.

player_cards = []
dealer_cards = []

2.times do
  player_cards << deck.pop
  dealer_cards << deck.pop
end

# Calculate scores.

def calculate_total(cards) 
  # [['H', '3'], ['C', 'Q'], ...]
  total = 0
  arr = cards.map{|e| e[1]} # ["8", "J"]

  arr.each do |value|
    if value == "A" # correct it later
      total += 11
    elsif value.to_i == 0 # for J Q K
      total += 10
    else 
      total += value.to_i
    end
  end
  
# Correct for Aces.
  arr. select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end

  total
end 


# Show Cards

dealer_score = calculate_total(dealer_cards)
player_score = calculate_total(player_cards)

puts "You have: #{player_cards[0]} and #{player_cards[1]} for a total of #{player_score}."
puts '---'
puts "Dealer has: #{dealer_cards[0]} and #{dealer_cards[1]} for a total of #{dealer_score}."
puts '---'

# Check blackjack.

if player_score == 21
  puts "Blackjack! You won!!"
elsif dealer_score == 21
  puts "Blackjack! You lost!"
end

# HIT or STAY

while player_score <22
  puts "What would you like to do? 1) hit 2) stay"
  puts "Press 1 to hit and 2 to stay"
  decision = gets.chomp
  count = 1

  if decision == "1"
    count += 1
    player_cards << deck.pop
    puts "Your new card is #{player_cards[count]}."
    player_score = calculate_total(player_cards)
    puts "You have a total of #{player_score}."
    puts '---'
    puts "Dealer has a total of #{dealer_score}."
    puts '---'
  elsif decision == "2"
    break
  else
    puts "Please enter either 1 or 2."
  end
end

if player_score > 21
  puts "You got busted. You lost."

# Continue play game.
else

  # By rule, dealer must hit until she has at least 17.
  while true
    count = 1
    while dealer_score <17
      count += 1
      dealer_cards << deck.pop
      puts "Dealer's new card is #{dealer_cards[count]}."
      dealer_score = calculate_total(dealer_cards)
    end
    puts "Dealer got busted." if dealer_score > 21
    break
  end

  if dealer_score < 22 && player_score <22
    puts "Your score is #{player_score}."
    puts "Dealer's score is #{dealer_score}."
    if player_score > dealer_score
      puts "Congrats! You won!"
    elsif player_score == dealer_score
      puts "Tie."
    else 
      puts "Sorry. You lost."
    end
  end
end


