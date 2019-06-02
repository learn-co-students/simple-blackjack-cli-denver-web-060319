def welcome
  # code #welcome here
  welcome_message = "Welcome to the Blackjack Table"
  puts welcome_message
end

def deal_card
  # code #deal_card here
  card_value = rand() * 11 + 1
  return card_value
end

def display_card_total(hand)
  # code #display_card_total here
  puts "Your cards add up to #{hand}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  return sum
end

def hit?(sum)
  # code hit? here
  prompt_user
  users_choice = get_user_input
  if users_choice == "h"
      sum += deal_card
  end
  return sum
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total) 
    display_card_total(total)
  end
    end_game(total)
  return total
end
    
