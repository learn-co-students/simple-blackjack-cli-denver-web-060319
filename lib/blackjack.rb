require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  puts num = rand(1..11)
  num
end

def display_card_total(num)
  card_total = num
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  input
end

def end_game(num)
  card_total = num
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    card_total = deal_card + deal_card
    puts "Your cards add up to #{card_total}"
    card_total
end

def hit?(num)
  card_total = num
  prompt_user
  user_input = get_user_input
  until user_input == "h" || user_input == "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    card_total = deal_card + card_total
  elsif user_input == "s"
    card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
  end
  end_game(card_total)
end
