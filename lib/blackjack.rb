require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  # code #get_user_input here
  return input = gets.chomp
end

def end_game(total)
  # code #end_game here
  
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
    elsif input == 's'
    return total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  currenthand = initial_round
  while currenthand <21 do
    currenthand =hit?(currenthand)
    display_card_total(currenthand)
end
end_game(currenthand)
end
    
