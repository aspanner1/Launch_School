# frozen_string_literal: true

require 'pry'

SUITS = %w[hearts spades clubs diamonds].freeze
FACE_CARDS = %w[jack queen king].freeze
ACE = ['ace'].freeze
NUMBERS = (2..10).to_a.freeze
FACE_VALUES = FACE_CARDS + ACE + NUMBERS
def initialize_deck
  deck = []
  deck << FACE_VALUES.map do |value|
    SUITS.map do |suit|
      [value, suit]
    end
  end
  deck.flatten!(2)
end

def player_hand!(deck)
  deck.shuffle.pop(2)
end

def dealer_hand!(deck)
  deck.shuffle.pop(2)
end

def evaluate_winner(player_hand, dealer_hand, player_bust, dealer_bust)
  phrase = ''
  player_value = total_value(player_hand)
  dealer_value = total_value(dealer_hand)
  comparison = player_value <=> dealer_value
  if comparison == 1 && player_bust == false || dealer_bust == true
    phrase = "Player wins! #{player_value} > #{dealer_value}"
  elsif comparison == -1 && dealer_bust == false
    phrase = "Dealer wins! #{dealer_value} > #{player_value}"
  elsif comparison.zero?
    phrase = "It's a tie! #{dealer_value} = #{player_value}"
  end
  phrase
end

def total_value(hand)
  sum = 0
  hand_values = hand.map do |card|
    FACE_CARDS.include?(card[0]) ? 10 : card[0]
  end
  hand_values.each do |value|
    sum += value if value.is_a?(Integer)
  end
  while hand_values.any?('ace')
    ace_index = hand_values.find_index('ace')
    hand_values[ace_index] = if (sum + 11) < 21
                               11
                             else
                               1
                             end
  end
  hand_values.inject(:+)
end

def bust(hand)
  total_value(hand) > 21
end

loop do
  deck = initialize_deck
  player_hand = player_hand!(deck)
  dealer_hand = dealer_hand!(deck)
  player_bust = false
  dealer_bust = false
  loop do # Player turn
    puts "Your hand is #{player_hand}. Dealer is showing #{dealer_hand[1]}"
    if bust(player_hand)
      puts "Sorry, you have bust. Dealer wins with #{dealer_hand}."
      player_bust = true
      break
    end
    puts 'Hit or stay?'
    response = gets.chomp
    if response.start_with?('h')
      player_hand << deck.shuffle.pop
      next
    elsif response.start_with?('s')
      puts "Your hand is #{player_hand}. Dealer's turn."
      sleep(1)
      break
    else
      puts 'Please enter a valid response'
    end
  end
  while player_bust == false # Dealer's turn
    puts "Dealer's hand is #{dealer_hand}"
    if total_value(dealer_hand) < 17
      sleep(1)
      puts 'Dealer hits...'
      dealer_hand << deck.shuffle.pop
      puts "Dealer hand is #{dealer_hand}"
    elsif bust(dealer_hand)
      dealer_bust = true
      puts 'Dealer busts!'
      break
    else
      puts 'Dealer stays.'
      break
    end
  end
  puts evaluate_winner(player_hand, dealer_hand, player_bust, dealer_bust)
  puts 'Play again?'
  play_again = gets.chomp
  next unless play_again.start_with?('n')

  break
end

puts 'Thanks for playing! Goodbye.'
