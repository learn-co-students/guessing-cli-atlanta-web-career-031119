require 'byebug';

def generate
    (0..10).to_a.sample()
end



def check(input)
    target=generate
    if input==target
        puts 'WINNER!'
        puts 'You guessed the correct number!'
    else
        puts 'WRONG!'
        puts "The computer guessed #{target}."
    end
end

def run_guessing_game
    puts 'Try to guess the same number as the computer. Ready?'
    sleep(2)
    puts 'Enter your guess between 0-10'

    input=gets.chomp
    check(input)

    puts "Enter 'exit' to quit, or any key to play again."
    again=gets.chomp
    if again=='exit'
        puts 'Thanks for playing!'
        return
    else
        run_guessing_game()
    end
end