
def run_guessing_game
  answer = rand(1..6)
  puts "Guess a number between 1 and 6."
    loop do
      guess = gets.chomp
      if guess == "exit"
        puts "Goodbye!"
        break
      elsif guess.to_i == answer
        puts "You guessed the correct number!"
        answer = rand(1..6)
        puts "Guess a number between 1 and 6."
      elsif guess.to_i != answer
        comp_guess = rand(1..6)
        puts "The computer guessed #{comp_guess}."
        if comp_guess == answer
          puts "You lose!"
          answer = rand(1..6)
          puts "Guess a number between 1 and 6."
        end 
      end
    end
  end
