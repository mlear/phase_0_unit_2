# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# 1.) create a class titled "PezDispenser" and have an intialize function that accepts an
#   array of strings representing flavors.
#
# 2.) create an instance method that allows to count the elements that are in the array
#
# 3.) create an instance method that will decrease the array by one
#
# 4.) create an instance method that will add an element to the array
#
# 5.) create an instance method that will display the contents of the array.


# 3. Initial Solution

class PezDispenser
 
  def initialize(pez)
    @pez = pez
  end
  
  def pez_count
    @pez.size
  end
  
  def add_pez(color)
    @pez.push(color)
  end
  
  def get_pez
    @pez.pop
  end
  
  def see_all_pez
    @pez.cycle(1) { |pez| puts pez }
  end

end
 


# 4. Refactored Solution


# I don't think I can reactor much here, all the methods are one line and describe
# whats going on in them, I think we are good to go.



# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
  raise "Assertion failed" unless yield
end

assert{ super_mario.pez_count == 9 }
assert{ super_mario != nil}


# 5. Reflection 

# I'm glad we are getting in all of this class work with ruby, I am becomming very comfortable
# with it, and fell like the bulk of coding with ruby revolves around using classes.  Now that
# I have said that though, watch all of my assumptions come crashing down!  Nothing here really #  through me for a loop.