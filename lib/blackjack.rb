require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  until answer == "h" || answer == "s"
   prompt_user
   answer = get_user_input
  end
  if answer == "h"
    card_dealt = deal_card
    card_total += card_dealt
  elsif answer == "s"
    card_total
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  until number > 21
    number = hit?(number)
    display_card_total(number)
  end
  end_game(number)
end
