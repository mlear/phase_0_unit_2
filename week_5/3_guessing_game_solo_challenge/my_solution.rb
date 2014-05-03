# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: the input will be an integer passed into the class that will set an answer variable, and then we will need method with a guess argument.
# Output: the guess method will return a high, low, or correct symbol based on the number passed to it, and a solved? method will return whether the game is over.
# Steps:

# => intialize the class with an integer that is the answer
# => define 2 more methods, one to check whether an integer is equal to the answer, and one that returns the ultimate result if the guess was correct.

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
	@answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess <= @answer
      return :low
    elsif @guess >= @answer
      return :high
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end




# 4. Refactored Solution


# still trying to refactor what I have already, there may be a better way to do that if conditional in the guess method



# 1. DRIVER TESTS GO BELOW THIS LINE


# still trying to figure out what to do here as there were tests provided to us.



# 5. Reflection 


# I had just done the validate credit card exercise in a peer pairing session last night, and it helped a lot with setting up this class and with the ternary expression at the end.
# I was still iffy with setting up instance methods and this exercise solidifed how the methods worked without asking for
# an argument to be passed to them.  I'm still worried about my refactoring and driver tests though, I'm not really sure
# what tests I am supposed to be writing as respecs are being provided for us.  I will keep researching for other methods to use
# to make my code cleaner, time is always a challenge at this point however.