=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

data structure:
hash for cards with card and value

=end
require "pry"
def initialize_deck
  deck = %w(Ace 1 2 3 4 5 6 7 8 9 J Q K)
  deck * 4
end

def value_of_hand(hand)
  value = []
  hand.each do |card|
    if card == "J" || card == "Q" || card == "K"
      value.push(10)
    elsif card.to_i.to_s == card.to_s
      value.push(card.to_i)
    else
      value.push(11)
    end
  end
  # change aces to one
  while value.reduce(:+) > 21 && value.include?(11)
		binding.pry
    if value.include?(11)
      index = value.index(11)
      value[index] = 1
    end
  end
  value.reduce(:+)
end

def deal_card(deck)
  card = deck.sample
  index = deck.index(card)
  deck.delete_at(index)
  card
end

score = [0,0]
loop do
deck = initialize_deck
player_cards = [deal_card(deck), deal_card(deck)]
dealer_cards = [deal_card(deck), deal_card(deck)]
loop do
  puts "Dealer has: #{dealer_cards[0]} and unknown cards"
  puts "You have: #{player_cards[0]} and #{player_cards[1]}"
  break if value_of_hand(player_cards) > 21
  # Player hits
  puts "Your value is #{value_of_hand(player_cards)}. Do you want to hit? (y/n)"
  hit = gets.chomp
  if hit == "y"
    player_cards.push(deal_card(deck))
  end
	break if hit == "n" && value_of_hand(dealer_cards) >= 17
  # Dealer hits
  if value_of_hand(dealer_cards) < 17
    dealer_cards.push(deal_card(deck))
  end
  break if value_of_hand(dealer_cards) >= 21


end
# Choose winner
puts "Your total is #{value_of_hand(player_cards)}. Computer total is #{value_of_hand(dealer_cards)} "
if value_of_hand(player_cards) > 21
  puts "Player bust, dealer wins."
	score[1] += 1
elsif value_of_hand(dealer_cards) > 21
  puts "Dealer bust, player wins."
	score[0] += 1
elsif value_of_hand(player_cards) > value_of_hand(dealer_cards)
  puts "You won!"
	score[0] += 1
elsif value_of_hand(player_cards) < value_of_hand(dealer_cards)
  puts "Computer won!"
	score[1] += 1
else
  puts "It's a tie!"
end
	break if score[1] == 5 || score[0] == 5
	puts "play again? (y/n)"
	play = gets.chomp
	break if play == "n"
end
puts "Thank you. Final score is #{score[0]} for you and #{score[1]} for the dealer."
# player turn

# dealer turn
