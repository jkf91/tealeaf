# Welcome to Blackjack
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

# Show hands for first two cards.
dealer_score = calc_score(dealer_cards)
player_score = calc_score(player_cards)

puts player_name + " has: #{player_cards[0]} and #{player_cards[1]} for a total of #{player_score}."
puts '---'
puts "Dealer has: #{dealer_cards[0]} and #{dealer_cards[1]} for a total of #{dealer_score}."
puts '---'

# Check blackjack.
if player_score == 21
  puts "Blackjack! You won!!"
elsif dealer_score == 21
  puts "Blackjack! You lost!"
end

# Player's turn: HIT or STAY
while player_score <22
  puts "What would you like to do? 1) hit 2) stay"
  puts "Press 1 to hit and 2 to stay."
  puts '---'
  decision = gets.chomp
  count = 1

  if decision == "1"
    count += 1
    player_cards << deck.pop
    puts '---'
    puts "Your new card is #{player_cards[count]}."
    player_score = calc_score(player_cards)
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

else

# Dealer's turn. By rule, dealer must hit until she has at least 17.
  while true
    count = 1
    while dealer_score <17
      count += 1
      dealer_cards << deck.pop
      puts "Dealer got a new card: #{dealer_cards[count]}."
      dealer_score = calc_score(dealer_cards)
      puts "Dealer's new score is #{dealer_score}."
    end
    puts "Dealer got busted. You won!" if dealer_score > 21
    break
  end

  if dealer_score < 22 && player_score <22
    puts player_name + "'s score is #{player_score}."
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