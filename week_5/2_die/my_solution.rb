# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of strings
# Output: a random element of that array
# Steps:
# => 1.) Make sure an array is being passed in as an arguement and its not empty.
# => 2.) Define a method that will return the number of elements in the array
# => 3.) Define a method that will return a random selection of that array.


# 3. Initial Solution

class Die
  def initialize(labels)
  		unless !labels.empty?
  			raise ArgumentError.new("Fill 'er up.")
  		end
  		@@labels = labels
  end

  def sides
  	return @@labels.length
  end

  def roll
  	return @@labels.sample
  end
end



# 4. Refactored Solution


# not seeing anything offhand.



# 1. DRIVER TESTS GO BELOW THIS LINE


# Still unclear what to do here.. will ask about!



# 5. Reflection 

# I thought that .sample would work better here then generating a random number and then passing into an array as an argument.
# The argument error gave me some trouble to start, I was over looking that there was a boolean check to see if an array
# was empty or not, can kept trying variation after variation after varation of code.  I need to remember that no matter
# how complex somethign seems, it doesn't necessarily have a complex answer and I just need to go find it instead of
# pounding on the keyboard.