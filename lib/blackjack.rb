 def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand 1..11
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
     if answer == 'h'
    card_total = card_total + deal_card
    return card_total
  elsif answer == 's'
    return card_total
    else invalid_command
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
    hit?(card_total)
    display_card_total(card_total)
  end
  end_game
end
    
