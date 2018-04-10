# multiple conditionals on if statement

system 'clear'

my_number = rand(1..10) # generate random number between 1 and 10
puts "I'm thinking of a number between 1 and 10. Can you guess it? "
number = gets.to_i

if number == my_number
    puts "Holy crap, you guessed my number!"
elsif number < 1 || number > 10
    puts "I said between 1 and 10!"
else
    puts "Nope, my number was #{my_number} !!"
end    


