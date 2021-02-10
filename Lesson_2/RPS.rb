require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

def win?(first, second, hash)
  hash[first.to_sym].include?(second)
end

def win_counter(player, computer, hash, arr)
  if win?(player, computer, hash)
    arr[0] += 1
  elsif win?(computer, player, hash)
    arr[1] +=1
  end
end

def display_results(player, computer, hash)
  if win?(player, computer, hash)
    prompt("You won this round!")
  elsif win?(computer, player, hash)
    prompt("You lost this round. Sorry!")
  else
    prompt("You tied this round!")
  end
end

def game_end_checker(arr)
  if arr[0] == 5
    puts "You won the game congrats!!!"
    "win"
  elsif arr[1] == 5
    puts "You list the game, sorry :("
    "loss"
  end
end

def prompt(message)
  puts("=> #{message}")
end

winning_combo_hash = {rock: ['lizard', 'scissors'], 
            paper: ['rock', 'spock'], 
            scissors: ['paper', 'lizard'],
            lizard: ['spock', 'paper'],
            spock: ['rock', 'scissors']
}

user_selection_hash = {r: 'rock', p: 'paper', sc: 'scissors', l: 'lizard', sp: 'spock'}

user_selection_translatation = %Q(
Type r for rock
Type p for paper
Type sc for scissors
Type l for lizard
Type sp for spock
)

score_array = [0,0]

loop do
  
  prompt("Welcome to Rock Paper Scissors Lizard Spock. The first one to 5 wins.")

  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    prompt(user_selection_translatation)
    choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(user_selection_hash[choice.to_sym])
    prompt("That is an incorrct option. Please try again")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{user_selection_hash[choice.to_sym]}! The computer has chosen #{computer_choice}!")

  display_results(user_selection_hash[choice.to_sym], computer_choice, winning_combo_hash)

  win_counter(user_selection_hash[choice.to_sym], computer_choice, winning_combo_hash, score_array)
  prompt("The current score is player: #{score_array[0]} to computer: #{score_array[1]}")

  break if game_end_checker(score_array) != nil
  
  prompt("Would you like to keep playing?")
  break unless gets.chomp.downcase.start_with?('y')
end
