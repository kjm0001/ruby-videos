system 'clear'

names = ["John", "Tim", "Mary", "Beatrice", "Bluto"]
puts names
puts names[0]

# hash
favorite_pizza = {
  "John"     => "Pepperoni",
  "Tim"      => "Mushroom",
  "Mary"     => "Cheese",
  "Beatrice" => "Ham and Cheese",
  "Bluto"    => "Supreme",
  "arrays"   => names

}

puts favorite_pizza
puts favorite_pizza["John"]

# add item to the hash, goes to the end of the hash
favorite_pizza["Bob"] = "Tuna"
puts favorite_pizza

# remove item from hash
favorite_pizza.delete("Tim")
puts favorite_pizza

