# string manipulation
system 'clear'

puts "Would like an apple? (yes/no)"
wants_apple = gets.downcase.chomp # remove white space and lowercase

if wants_apple == "yes"
    puts "Here's an apple!"
elsif wants_apple == "no"
    puts "Fine! No apple for you!"
else 
    puts "I don't know what #{wants_apple} is"
end 

# different string manipulations 
puts "STUFF".downcase
puts "duff".upcase
puts "stuff and duff".capitalize # just capitalize the first word
puts "stuff and duff".reverse # reverse the string word
puts "Stuff and Duff".swapcase # swap between upper and lower case letters
puts "stuff and duff".length