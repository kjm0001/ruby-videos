system 'clear'

puts "What is your name? "
name = gets # get user input
puts "Hello #{name}"

########################################

puts "Pick a number between 1 and 10"
number = gets.to_i
puts "Your number was #{number + 1}"