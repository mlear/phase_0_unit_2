# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with: Zach Pflederer].

# 1. Pseudocode


# 1.) We will need to define a method as total.
# 2.) We will pass one argument to the method.
# 3.) The argument will be an array of numbers.
# 4.) The method will return the sum of the numbers in the argument array.

# 5.) We will define a method as sentence_maker.
# 6.) We will pass a single argument to the sentence_maker method.
# 7.) The argument will be an array of strings.
# 8.) The method will iterate through the array that is passed to it and join the separate elements into a single string.
# 9.) We will properly punctuate the result.
# 10.) The method will return a grammatically correct sentence based on the array provided.



# 2. Initial Solution

def total(numbers)
    sum = 0
    numbers.each { |x| sum = (sum + x) }
    sum
end

def sentence_maker(words)
	words.map! { |x| x.class == String ? x : x.to_s }
    words[0].capitalize!
    words[-1] = "#{words[-1]}."
    words[1..-1].map! { |x| x.downcase }
    words.join(" ")
end

# 3. Refactored Solution

def total(numbers)
    sum = 0
    numbers.each { |x| sum = (sum + x) }
    sum
end

def sentence_maker(words)
    words.map! { |x| x.class == String ? x : x.to_s }
    words.map.downcase! words.map.downcase!  #We thought this was more readable as code.  It spelled out the steps more clearly.
    words[0].capitalize!
    words[-1] = "#{words[-1]}."
    words.join(" ")
end


# 4. Reflection - This was tough getting back into ruby after focusing on html, css and java for
# the last few weeks.  We had a couple of miscures working through the code, but figured it
# out quick enough.  I almost feel like this should have come to reinforce what we had learned right
# at the beginning before html and css.