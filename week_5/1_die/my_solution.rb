# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an integer that represents a number of sides on a die
# Output: a random number representing a roll
# Steps:
#  1.) Create a class call die
#  2.) initiate the class by allowing it to accept an arugment representing the number of sides.
#  3.) create a method that displays the sides that are being rolled.
#  4.) create a method that displays a random roll.


# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 3
        raise ArgumentError.new("This is dice.. not paper.")
    end
    @@sides = sides
  end
  
  def sides
    return @@sides
  end
  
  def roll
    return rand(@@sides) + 1
  end
end



# 4. Refactored Solution

# this looks DRY to me, not sure what I can do.




# 1. DRIVER TESTS GO BELOW THIS LINE

#puts die(0) == ArgumentError

#puts die(20) == die.sides

#puts die.sides >= die.roll

#I'm really at a lost what to do here in this section.. test code already exists!

# 5. Reflection 

# This exercise was pretty straight forward, but I am still struggling with the test code aspect.  I'm not sure what we are
# supposed to be doing here.  There already is a rspec file for this challenge, so I put the code that I thought was needed
# in the driver tests above.  When I try to run the code without being commented out, I get massive errors however!  Even
# when I set up the proper call on die.  I'm kind of at a loss as the code works perfectly otherwise.