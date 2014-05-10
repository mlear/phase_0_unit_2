# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

=begin

class CreditCard
  def initialize(card)
		raise ArgumentError.new("must be 16") if card.to_s.length != 16
		@card = card	#  While this works fine, I think you can string a couple things together to make everything a little more efficient.  We will have to redefine some variables to make this work though.
	end

	def check_card
		card_array = @card.to_s.split('')  # we can take this out with the changes made in the intitialize method.
		card_array.map!{|x| x.to_i}  # we can also take this out with the changes made in the initialize method.
		card_array.each_index{|x| card_array[x] = card_array[x]*2 if x.even?} # lets get rid of that x and describe what's going in there better.  Also, lets not repeat ourselves and use the *= operater here.
		final_array = [] # No need for another variable as we can use the instance variable in the class as it will reset when a new object is created.
		card_array.each do |x|
			if x < 10 # We realy don't need this if else loop as we can run the .split on the entire array if we first join the array into one number and then split it again back into individual elements.
				final_array << x
			else
				char_array = x.to_s.split('')
				final_array << char_array[0].to_i
				final_array << char_array[1].to_i
			end
	  end
		sum = 0 #we don't need this variaable either, we can reduce the next couple of lines into a simple test using the reduce method on the array.
		final_array.each{|x| sum += x}
		return sum%10 == 0? true : false
	end

end

=end

# Refactored Solution

class CreditCard
  
 	def initialize(card)
		raise ArgumentError.new("must be 16") if card.to_s.length != 16
		@card = card.to_s.chars.map(&:to_i)	
	end

	def check_card

		@card.each_index{ |num| @card[num] *= 2 if num.even? }
		@card = @card.join.to_s.chars.map(&:to_i)
    
		@card.reduce(:+) % 10 == 0 ? true : false
    
	end

end


# DRIVER TESTS GO BELOW THIS LINE


card = CreditCard.new(4408041234567893)
card2= CreditCard.new(4408041234567892)


def assert
	raise "Assertion failed" unless yield
end

assert{ card.check_card == true }
assert{ card2.check_card == false }

# Reflection 

# this code was remarkably similar to the one Lienha and I had come up, but just wasn't refatored.  The steps were almost the
# same and a different approach was used to doubling ever other element in the array, but once things were refactored down, they look
# almost identical.  I like reviewing other peoples answers after the fact, you learn a lot about the code.  I didn't even
# even think about testing for an even index number, those code ended up cleaner the ours.