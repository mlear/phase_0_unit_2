# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Lienha Carleton ].

# 2. Pseudocode

# Input: 16-character number
# Output: true or false boolean
# Steps:
  # create a credit card class with separate methods
  # 1st method initialize the class and create an array from the argument passed
  # 2nd method modifies the array and calculate the sum 
  # 3rd method determines the sum is the multiple of 10 and returns the result.


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s.chars.map { |e| e.to_i }
    
    raise ArgumentError.new ("Invalid input, not enough numbers!") unless @card_number.length == 16
    
  end
  
  def check_card
  	i = @card_number.length - 2

    while i >= 0
    	@card_number[i] = @card_number[i] * 2 
    	i -= 2
    end

 	@card_number = @card_number.join.to_s.chars.map {|z| z.to_i}
                                  
    @sum = @card_number.reduce(:+)
 
    (@sum % 10) == 0 ? true : false
  end
end



# 4. Refactored Solution


# I feel like we should be able to do something about that while loop, but can't think of anything right now.



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# That was a little tricky then the both of us thought it would be, and required a little bit of debugging at the
# end.  There were some general syntax error that through us off until we went line by line, we forgot a .length
# at one point and were makings things unecessarily complicated at others.  In the end though, it works and
# I think our solution is pretty clean and fast!
