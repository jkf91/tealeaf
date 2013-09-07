# Welcome to Blackjack
require 'pry'

puts "What's your name?"
player_name = gets.chop
puts "Welcome to Blackjack, " + player_name + "!"

# Create Deck

numbers = [2, 3, 4, 5, 6, 7, 8 , 9, 10, 'J', 'Q', 'K', 'A']
suits = ['H', 'C', 'S', 'D']
deck = suits.product(numbers)
deck.shuffle!

# Deal cards to player & delaer.

player_cards = []
dealer_cards = []

2.times do 
  player_cards << deck.pop
  dealer_cards << deck.pop
end

# Calculate Scores.
def calc_score(cards)
  # [['H', '3'], ['C', 'Q'], ...]
  score = 0
  points = cards.map{|e| e[1]}  # ["8", "J"]

  points.each do |point|
    if point == 'J' || point == 'Q' || point == 'K'
      score += 10
    elsif point == 'A'
      if score <= 10
        score += 11
      else
        score +1
      end
    else
      score += point.to_i
    end
  end

  score
end

# def calc_score(cards) 
#   # [['H', '3'], ['C', 'Q'], ...]
#   total = 0
#   arr = cards.map{|e| e[1]} # ["8", "J"]

#   arr.each do |value|
#     if value == "A" # correct it later
#       total += 11
#     elsif value.to_i == 0 # for J Q K
#       total += 10
#     else 
#       total += value.to_i
#     end
#   end
  
# # Correct for Aces.
#   arr. select{|e| e == "A"}.count.times do
#     total -= 10 if total > 21
#   end

#   total
# end 

# Show fhands for first two cards.
puts player_name + ", your cards are #{player_cards}. Your total score is " + calc_score(player_cards).to_s + "."
puts "Dealer's cards are #{dealer_cards}. Dealer's total score is "+ calc_score(dealer_cards).to_s + "."

binding.pry




# Player's turn: HIT or STAY


# Dealer's turn: HIT until score >= 17


# Compare Scores. Who won?



# Bonus –  Play again?