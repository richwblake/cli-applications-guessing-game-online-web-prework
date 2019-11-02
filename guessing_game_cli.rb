def get_random_number
  rand(6) + 1
end

def prompt_and_get_input_from_user
  gets.chomp
end

def check_guess_against_computer( number_to_match, user_input )
  case user_input
  when number_to_match.to_s
    puts "You guessed the correct number!"
  when "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{number_to_match}."
  end
end

def run_guessing_game
  number_to_match = get_random_number
  user_input = prompt_and_get_input_from_user
  check_guess_against_computer( number_to_match, user_input )
end