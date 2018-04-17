system 'clear'

def method_name(args)
  # do stuff
end

# widsom method
def wisdom()
  puts "You gots to know when to hold em, and know when to fold em!"
end

def numbers(x)
  puts "Your number is: #{x}"
end

def fizzbuzz(x)
  if x % 3 == 0 and x % 5 == 0
    puts "#{x} is fizzbuzz!"
  elsif x % 3 == 0
    puts "#{x} is fizz!"
  elsif x % 5 == 0
    puts "#{x} is buzz!"
  else
    puts "#{x} is boring!"
  end
end


def namer(first_name, last_name)
 puts "Your first name is: #{first_name}"
 puts "Your last name is: #{last_name}"
end

# method with default args if no args passed in
def namer2(first_name="Johns", last_name="Elder")
 puts "Your first name is: #{first_name}"
 puts "Your last name is: #{last_name}"
end


# call the method
wisdom

# call the method with passed in argument
numbers(97)

puts "Enter a number: "
num = gets.chomp.to_i
fizzbuzz(num)

namer("John", "Elder")
# no args passed in, so use default
namer2()
# args override the default values
namer2("Bob", "Thompson")

