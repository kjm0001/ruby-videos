system 'clear'

# while loop
puts "Executing while loop"
num = 0
while num < 10 do
  puts num += 1
end

# until loop
puts ""
puts "Executing until loop"
num = 0
until num == 10 do
  puts num += 1
end

# for loop
puts ""
puts "Executing for loop"
for num in 1..5
  puts num
end

# each loop
#something.each do |variable|
#  code to execute
#end
puts ""
puts "Executing each loop"
(0..5).each do |num|
  puts num
end
# for each item in array
my_array = ["Bob",2,3,4,"John"]
my_array.each do |num|
  puts num
end












