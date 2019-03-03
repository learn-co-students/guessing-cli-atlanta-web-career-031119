def run_guessing_game
  puts "Guess a number between 1 and 6."
  loop do
    input = gets.chomp
    target_number = rand(1..6)
    if input == "exit"
      puts "Goodbye!"
      break
    elsif input.to_i == target_number
      puts "You guessed the correct number!"
    else 
      puts "The computer guessed #{target_number}."
    end
  end
end