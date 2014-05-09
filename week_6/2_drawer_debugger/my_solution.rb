# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
    return "#{type} is clean!"
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

pointy_fork = Silverware.new("pointy_fork")
silverware_drawer.add_item(pointy_fork) 
silverware_drawer.view_contents
used_fork = silverware_drawer.remove_item(pointy_fork) #add some puts statements to help you trace through the code...
used_fork.eat

puts used_fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Clean your silverware!" unless yield
end

assert { pointy_fork.instance_variable_get(:@clean) == true }
assert { removed_knife.instance_variable_get(:@clean) == true }




# 5. Reflection:  This was a fun exercise, I really enjoy debugging and finding out whats
# wrong with code.  I hope to do more of this in the future! (I'm sure I will.)
# I'm just not sure I followed the spirit of the exercise when I started changing variable
# names as fork was not being treated as a variable but as another method call. I think there
# is a way to signify that we want fork to be variable and I can't remember or find it.