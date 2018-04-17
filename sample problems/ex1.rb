# LESSER OF TWO EVENS: Write a function that returns the lesser of two given numbers if both numbers are even, but returns the greater if one or both numbers are odd¶
# lesser_of_two_evens(2,4) --> 2
# lesser_of_two_evens(2,5) --> 5
puts "Testng lesser_of_two_evens function"
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

puts "Testing animal_crackers function"
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

puts "Testing makes_twenty function"

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
puts "Testing old_macdonald function"

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
puts "Testing master_yoda function"

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
puts "Testing almost_there function"

def almost_there(n)
 return ((n - 100).abs <= 10) || ((n - 200 ).abs <= 10)
end

puts almost_there(90)  #--> True
puts almost_there(104) # --> True
puts almost_there(150) # --> False
puts almost_there(209) # --> True

# LEVEL 2 PROBLEMS
# FIND 33:
# Given a list of ints, return True if the array contains a 3 next to a 3 somewhere.

# has_33([1, 3, 3]) → True
# has_33([1, 3, 1, 3]) → False
# has_33([3, 1, 3]) → False
puts "Testing has_33 function"

def has_33(nums)

  check_list = [3,3]
  size = nums.length
  matches = FALSE
  x = 0; y = 2; counter = 0

  while counter < size
    if check_list == nums[x,y]
     matches = TRUE
     break
    else
      x +=1; y+=1; counter +=1
    end
  end

  return matches
end

puts has_33([1, 3, 3])    # → True
puts has_33([1, 3, 1, 3]) # → False
puts has_33([3, 1, 3])    # → False

# PAPER DOLL: Given a string, return a string where for every character in the original there are three characters
# paper_doll('Hello') --> 'HHHeeellllllooo'
# paper_doll('Mississippi') --> 'MMMiiissssssiiippppppiii'
puts "Testing paper_doll function"

def paper_doll(text)
  new_word = ''

  text.each_char do |letter|
    new_word = new_word + letter * 3
  end
  return new_word
end

puts paper_doll('Hello')        #--> 'HHHeeellllllooo'
puts paper_doll('Mississippi')  # --> 'MMMiiissssssiiippppppiii'

# BLACKJACK: Given three integers between 1 and 11, if their sum is less than or equal to 21, return their sum. If their sum exceeds 21 and there's an eleven, reduce the total sum by 10. Finally, if the sum (even after adjustment) exceeds 21, return 'BUST'
# blackjack(5,6,7) --> 18
# blackjack(9,9,9) --> 'BUST'
# blackjack(9,9,11) --> 19

puts "Testing blackjack function"

def blackjack(a,b,c)

  mylist = [a,b,c]
  total = mylist.inject(0){|sum,x| sum + x }

  if total > 21
    if mylist.include? 11
      new_total = total - 10
      if new_total > 21
        total = 'BUST'
      else
        total = new_total
      end
    else
      total = 'BUST'
    end
  end
  return total
end

puts blackjack(5,6,7)   # --> 18
puts blackjack(9,9,9)   # --> 'BUST'
puts blackjack(9,9,11)  # --> 19

# SUMMER OF '69: Return the sum of the numbers in the array, except ignore sections of numbers
# starting with a 6 and extending to the next 9 (every 6 will be followed by at least one 9).
# Return 0 for no numbers.
# summer_69([1, 3, 5]) --> 9
# summer_69([4, 5, 6, 7, 8, 9]) --> 9
# summer_69([2, 1, 6, 9, 11]) --> 14
puts "Testing method summer_69"
def summer_69(arr)

  if arr.include? 6
    #beg_pos = arr.index(6)
    #puts beg_pos
    #end_pos = arr.index(9)
    #puts end_pos
    sum_array = []
    arr.each do |num|
      if num < 6 or num > 9
        #puts "num value is : #{num}"
        sum_array = sum_array.push(num)
        #puts "new array: #{new_array}"
      end
    end
  else
    sum_array = arr
  end
  # return sum of the array
  # https://gist.github.com/ProfAvery/1777634
  return sum_array.inject :+
end

puts summer_69([1, 3, 5])           # --> 9
puts summer_69([4, 5, 6, 7, 8, 9])  # --> 9
puts summer_69([2, 1, 6, 9, 11])    # --> 14
