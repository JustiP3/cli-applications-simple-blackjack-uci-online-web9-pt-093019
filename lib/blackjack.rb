def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand / 11
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"  
end

def get_user_input
  input = gets 
end

def end_game (num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  total = card_1 + card_2
  display_card_total(total)
  return total 
end



def hit? (current_total)
  
  prompt_user
  choice = get_user_input

if (choice != "h") || (choice != "s")
  while ((choice != "h") && (choice != "s")) do 
  invalid_command
  prompt_user
  choice = get_user_input
  end
end 
  
  if choice == "h"
    number = deal_card
    new_total = current_total + number
    
  elsif choice == "s" 
    new_total = current_total

  end

  return new_total
  
end



def invalid_command
  puts "Please enter a valid command"
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  total = initial_round

  until (total > 20) do 
  hit?(total)
  display_card_total(total)
  end
  
end_game

end
    
