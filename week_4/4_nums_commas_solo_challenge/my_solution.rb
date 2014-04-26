# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?  The input will be an integer
# What is the output? (i.e. What should the code return?)  the output should be the integer with proper commas.
# What are the steps needed to solve the problem?
#
# Defind a method that will accept an integer as an argument
# Turn the integer into a string, and seperate the numbers
# Run a loop over the length of the string that inserts a comma every 3 elements
# Return the array.


# 2. Initial Solution

def separate_comma(int)
	int_array = int.to_s.split("")
	x = int_array.length
    while x > 3 do
        int_array.insert( x - 3, "," )
        x -= 3
    end
    return int_array.join
end


# 3. Refactored Solution

# still researching this one, there has to be a way to get rid of this while loop.

# 4. Reflection - Syntax strikes again.. a silly little typo kept me scratching my head for nearly 45 minutes on this one.
# I feel like there should be something easier then this while loop that will make this work, and I will research it, but 
# with the knowledge that I have at this point, this was the easiest and most efficient code I could come up with.