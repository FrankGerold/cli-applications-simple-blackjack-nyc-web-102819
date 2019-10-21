def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
  puts  "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card = deal_card
  card2 = deal_card
  cards = card + card2
  display_card_total(cards)
end

def hit?(total)
  prompt_user
  decision = get_user_input
  if decision == 'h'
    total += deal_card
  else if decision != 'h' && decision != 's'
    puts "Please enter a valid command"
    prompt_user
  end
  total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
   
end 