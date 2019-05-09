def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(current_card_total)
  puts "Sorry, you hit #{current_card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  case input
  when "s"
    current_card_total
  when "h"
    current_card_total + deal_card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
# Welcome the user
# Deal them their first two cards, i.e. their initial_round
# Ask them if they want to hit or stay
# If they want to hit, deal another card
# If they want to stay, ask them again!
# If their card total exceeds 21, the game ends.