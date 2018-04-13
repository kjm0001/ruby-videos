(1..100).each do |x|
  if x % 3 == 0 and x % 5 == 0
    puts "#{x}: FizzBuzz"
  elsif x % 3 == 0
    puts "#{x}: Fizz"
  elsif x % 5 == 0
    puts "#{x}: Buzz"
  else
    puts "#{x}"
  end
end
