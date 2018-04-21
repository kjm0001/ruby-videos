system 'clear'


# start the game!
def start_game()
  system 'clear'
  puts "Welcome to the Math Flashcards!"
  puts "Which card would you like? (add|subtract|multiply|divide)"

  game = gets.chomp.downcase

  if game == "add"
  # call addition method
    add_flashcards
  elsif game == "subtract"
  # call multiply method
    subtract_flashcards
  elsif game == "multiply"
    multiply_flashcards
  # call divide method
  elsif game == "divide"
    divid_flashcards
  # catch all
  else
    puts "Sorry, I didn't recognize that, please hit enter to try again"
    gets
    start_game()

  end

end

# add method
def add_flashcards()
  system 'clear'
  num_1 = Random.rand(0..10)
  num_2 = Random.rand(0..10)

  answer = num_1 + num_2

  puts "What is #{num_1} + #{num_2}?"
  user_answer = gets.chomp.to_i
  system 'clear'
  if user_answer == answer
    puts "Correct! #{num_1} + #{num_2} = #{answer}"
  else
    puts "Sorry! #{num_1} + #{num_2} = #{answer} NOT #{user_answer}"
  end
end


def subtract_flashcards()
  system 'clear'
  num_1 = Random.rand(0..10)
  num_2 = Random.rand(0..10)

  answer = num_1 - num_2

  puts "What is #{num_1} - #{num_2}?"
  user_answer = gets.chomp.to_i
  system 'clear'
  if user_answer == answer
    puts "Correct! #{num_1} - #{num_2} = #{answer}"
  else
    puts "Sorry! #{num_1} - #{num_2} = #{answer} NOT #{user_answer}"
  end
end

def multiply_flashcards()
  system 'clear'
  num_1 = Random.rand(0..10)
  num_2 = Random.rand(0..10)

  answer = num_1 * num_2

  puts "What is #{num_1} * #{num_2}?"
  user_answer = gets.chomp.to_i
  system 'clear'
  if user_answer == answer
    puts "Correct! #{num_1} * #{num_2} = #{answer}"
  else
    puts "Sorry! #{num_1} * #{num_2} = #{answer} NOT #{user_answer}"
  end
end

def divid_flashcards()
  system 'clear'
  num_1 = Random.rand(0..10)
  num_2 = Random.rand(1..10)

  answer = num_1 / num_2

  puts "What is #{num_1} / #{num_2}?"
  user_answer = gets.chomp.to_i
  system 'clear'
  if user_answer == answer
    puts "Correct! #{num_1} / #{num_2} = #{answer}"
  else
    puts "Sorry! #{num_1} / #{num_2} = #{answer} NOT #{user_answer}"
  end
end


# start the actual game
start_game

