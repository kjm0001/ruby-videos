# LESSER OF TWO EVENS: Write a function that returns the lesser of two given numbers if both numbers are even, but returns the greater if one or both numbers are odd¶
# lesser_of_two_evens(2,4) --> 2
# lesser_of_two_evens(2,5) --> 5

def lesser_of_two_evens(a,b)
    # both conditions are met
    if a % 2 == 0 and b % 2 == 0
        a < b ? a : b # if a < b return a else return b
    else
        a > b ? a : b # if a > b return a else return b
    end    
end    
   
puts (lesser_of_two_evens(2,4))
puts (lesser_of_two_evens(2,5))

# ANIMAL CRACKERS: Write a function takes a two-word string and returns True if both words begin with same letter¶
# animal_crackers('Levelheaded Llama') --> True
# animal_crackers('Crazy Kangaroo') --> False

def animal_crackers(text)
  my_list = text.split(" ")  
  return my_list[0][0] == my_list[1][0]
end    

puts animal_crackers('Levelheaded Llama')
puts animal_crackers('Crazy Kangaroo')

# MAKES TWENTY: Given two integers, return True if the sum of the integers is 20 or if one of the integers is 20. If not, return False
# makes_twenty(20,10) --> True
# makes_twenty(12,8) --> True
# makes_twenty(2,3) --> False

def makes_twenty(num1,num2)
  return (num1 + num2 == 20) || (num1 == 20) || (num2 == 20)
      
end

puts makes_twenty(20,10)
puts makes_twenty(12,8)
puts makes_twenty(2,3)

# LEVEL 1 PROBLEMS
# OLD MACDONALD: Write a function that capitalizes the first and fourth letters of a name¶
# old_macdonald('macdonald') --> MacDonald
# Note: 'macdonald'.capitalize() returns 'Macdonald'

def old_macdonald(name)
    new_word = ''
    name.each_char.with_index do |letter, index|
        if index == 0 or index == 3
            new_word = new_word + letter.capitalize
        else
            new_word = new_word + letter
        end
    end    
    return new_word    
end

puts old_macdonald('macdonald')

# MASTER YODA: Given a sentence, return a sentence with the words reversed
# master_yoda('I am home') --> 'home am I'
# master_yoda('We are ready') --> 'ready are We'
# Note: The .join() method may be useful here. The .join() method allows you to join together strings in a list with some connector string. For example, some uses of the .join() method:

# >>> "--".join(['a','b','c'])
# >>> 'a--b--c'
# This means if you had a list of words you wanted to turn back into a sentence, you could just join them with a single space string:

# >>> " ".join(['Hello','world'])
# >>> "Hello world"

def master_yoda(some_text)
    
    return (some_text.split(' ').reverse).join(' ')
end

puts master_yoda('I am home') # 'home am I'
puts master_yoda('We are ready') # 'ready are We'

# ALMOST THERE: Given an integer n, return True if n is within 10 of either 100 or 200
# almost_there(90) --> True
# almost_there(104) --> True
# almost_there(150) --> False
# almost_there(209) --> True
# NOTE: abs(num) returns the absolute value of a number

def almost_there(n)
 return ((n - 100).abs <= 10) || ((n - 200 ).abs <= 10)
end

puts almost_there(90)  #--> True
puts almost_there(104) # --> True
puts almost_there(150) # --> False
puts almost_there(209) # --> True

