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
  card += deal_card
  display_card_total(card)
  card
end

def invalid_command
    puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  decision = get_user_input
  if decision == 'h'
    total += deal_card
  elsif decision != 'h' && decision != 's'
    invalid_command
    hit?(total)
  end
  total
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end