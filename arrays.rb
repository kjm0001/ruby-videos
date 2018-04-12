system 'clear'

names = ['John', 'Tim', 'Mary', 'Beatrice', 'Bluto']

puts names    # returns all values
puts names[0] # returns value at position 0

my_var = "Fred"
second_array = [1,2,3,4,5]
names = ['John', 41, my_var, 'Beatrice', 'Bluto', second_array]

puts names[2]
puts names[-1][2]
puts names.length

names.insert(1, "Ferris") # add Ferris to postion 1

puts names

names.push("Mary") # add Mary to end of the array

puts names

names.unshift("Timothy") # add Timothy to the begin of the array

puts names

names.pop # remove last item off the array

puts names

names.shift # remove the first item off the array
puts names

names.delete_at(0) # remove item at this position
puts names

names.delete('Fred')  # remove a specific value
puts names


