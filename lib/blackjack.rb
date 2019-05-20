def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  puts rand(1..11)
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  move = gets.chomp
  puts "#{move}"
  move
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  x
end

def hit?(x)
  ans = get_user_input
  prompt_user 
  ans
    if ans == 'h'
      x += deal_card
    end  
  x
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
