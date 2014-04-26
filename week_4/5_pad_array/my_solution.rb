# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? The input will be a maximum element count for an array, along with an optional value to add to the array.
# What is the output? (i.e. What should the code return?)  Depending on which method is run, either a new array or the original array modified.
# What are the steps needed to solve the problem?
#
# Define 2 methods, one called pad, that creates a new array and pads it.  The other pad! that will modify the array being passed
# into the method.


# 2. Initial Solution
class Array
	def pad(size, value = nil)
   		new_array = self.dup
   		new_array[(size - new_array.length).times { new_array.push value }]
   		return new_array
	end

	def pad!(size, value = nil)
    	(size - self.length).times { self.push value }
    	self.replace(self)
	end
end


# 3. Refactored Solution

# I'm sure something is inefficient there, I just can't see it at this point.

# 4. Reflection 

# This one didn't give me to much trouble beyond pad modifying the array that I was passing into it.  I couldn't figure out
# why it was doing this as I assigning it to a new array and then modifying the new array before returning it.  With a little
# research I realized that I had to use the .dup method to make this work correctly, I'm still not 100% why I had to do this to fix
# the destruction issue, but I will have to research and find out!  I think it has something to do with the self reference