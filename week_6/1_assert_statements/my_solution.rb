# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# => bettysue runes through fine because the test was true and the method yielded.  
# => But when name was asked if it was equal to billybob, the assert method did not yeild so it rasied the "assertion failed"
# => string on line 14.

# 3. Copy your selected challenge here

class CreditCard

  def initialize(card)
    @card = card.to_s.chars.map(&:to_i)
    
    raise ArgumentError.new ("Invalid input, not enough numbers!") unless @card.length == 16
    
  end
  
  def check_card
    i = @card.length - 2

    while i >= 0
      @card[i] *= 2 
      i -= 2
    end

    @card = @card.join.to_s.chars.map(&:to_i)
                                  
    @card.reduce(:+) % 10 == 0 ? true : false
  end
end

card = CreditCard.new(4408041234567893)
p card.check_card == true
another_card = CreditCard.new(4408041234567892)
p another_card.check_card == false


# 4. Convert your driver test code from that challenge into Assert Statements
card = CreditCard.new(4408041234567893)
another_card = CreditCard.new(4408041234567892)



def assert
	raise "Assertion failed" unless yield
end

assert{ card.check_card == true }
assert{ another_card.check_card == false }


# 5. Reflection

# => I'm a little boggled by this, but I'm sure it will settle in once I use it a few times, but as of right now I just don't
# => don't get why the assert is better than a puts boolean statement?  It seems like that is more efficient..   or i am
# => completely missing something really important.
