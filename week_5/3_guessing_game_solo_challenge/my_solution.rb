# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: the input will be an integer passed into the class that will set an answer variable, and then we will need method with a guess argument.
# Output: the guess method will return a high, low, or correct symbol based on the number passed to it, and a solved? method will return whether the game is over.
# Steps:

# => intialize the class with an integer that is the answer
# => define 2 more methods, one to check whether an integer is equal to the answer, and one that returns the ultimate result if the guess was correct.

# 3. Initial Solution
=begin
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
=end



# 4. Refactored Solution


class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess == @answer
      @solved = true
      return :correct      
    elsif guess < @answer
      return :low
    else
      return :high
    end
  end

  def solved?
    @solved
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE


game = GuessingGame.new(9)

p game.guess(7) == :low
p game.guess(10) == :high

p game.solved? == false

p game.guess(9) == :correct

p game.solved? == true



# 5. Reflection 


# I had just done the validate credit card exercise in a peer pairing session last night, and it helped a lot with setting up this class and with the ternary expression at the end.
# I was still iffy with setting up instance methods and this exercise solidifed how the methods worked without asking for
# an argument to be passed to them.  I'm still worried about my refactoring and driver tests though, I'm not really sure
# what tests I am supposed to be writing as respecs are being provided for us.  I will keep researching for other methods to use
# to make my code cleaner, time is always a challenge at this point however.