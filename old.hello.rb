system "clear"
##puts "Hello World!"

# Start the game
def start_game()
    system "clear" 
    puts "Welcome to Math Flashcards!"
    puts "Which cards would you like? (add|subtract|multiply|divdie)"
    game = gets.chomp.downcase
    
    if game == "add"
        #Call addition methd
        add_flashcards()
    elsif game == "subtract"
        # Call subtract method
    elsif game == "multiply"
        # Calll multiply method
    elsif game == "divide"
        # Call divide method
    else 
        puts "Sorry try again"
        gets 
        start_game()
    end
        
end


def add_flashcards()
   system "clear" 
   num_1 = Random.rand(0..10)
   num_2 = Random.rand(0..10)
   correct_answer = num_1 + num_2
   
   puts "What is #{num_1} + #{num_2}"
   user_answer = gets.chomp.to_i
   
  if user_answer == correct_answer
       system "clear"
       puts "Correct #{num_1} + #{num_2} = #{correct_answer}"
  else
      puts "Sorry wrong answer"
  end  
  
  puts "Would you like to play again? (y/n/restart)"
  play_again = gets.chomp.downcase
  
  if play_again == "y"
    add_flashcards()
  elsif play_again == "restart"
    start_game()
  else
      exit
  end      
        
end    


## Start game
start_game()