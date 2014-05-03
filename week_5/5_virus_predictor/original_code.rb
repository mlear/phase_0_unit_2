# U2.W5: Virus Predictor

# I worked on this challenge [by myself].

# EXPLANATION OF require_relative
# the require_relative imports another set of code for this file to run off of.  Almost like an html page referencing a css.
#
require_relative 'state_data'

class VirusPredictor

# => the intialize method is setting up the instance variables that the class will be using, based off the arguments passed.

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# => the virus_effects method is using the instance variables of the state  population and population density to call on 
# => two more class methods.  This has been refactored to remove the necessity of the arguments to be passed.  Insance variables can
# => can be called anywhere in the class and do not need to be specfied as the data already exists through the intialize method.

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

  # => private makes the predicted_deaths method private, which cannot be called on by a specific receiver.  You can
  # => can call on the method, but randomcode.privatemethod will not work.
  # => predicted deaths will use the population density instance vaiable to set the number_of_deaths variable equal to a value
  # => based of the value sored in the population instance vaiavle.  It will then print out a string containing the variables along
  # => with the instance state variable to identify where the data is coming from.
  # => if the private was moved abovce the virus_effets mehtod, it would make that method private and we would not be able
  # => to call upon it by the different states.

 # def predicted_deaths
 #   counter = 50
 #   multiplier = 0.0
 #   if @population_density >= 50
 #     while counter <= @population_density do
 #       multiplier += 0.1
 #       counter += 50
 #       if counter > 200
 #         break
 #       end
 #     end
 #   else
 #     multiplier = 0.5
 #   end
 #   number_of_deaths = (@population * multiplier).floor

 #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 # => I am trying to refactor predicted deaths into a loop, but the more I work on it, I think the if elsif is artually more
 # => readable and efficient
  def predicted_deaths
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# => This method finishs the output by chaining onto the print statement from the predicted_deaths method.  It sets a local
# => variable of speed and then modifies it based off of the population_density instance variable.

  def speed_of_spread #in months

    speed = 2.5
    counter = 50
    while counter <= @population_density do
      speed -= 0.5
      counter += 50
      if counter > 200
        break
      end
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# => I'm going to wite a new method now that will run a report on the etire state_data file

def all_states
  STATE_DATA.each do |x, y|
    state = VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population], STATE_DATA[x][:region], STATE_DATA[x][:regional_spread])
    state.virus_effects
  end
end

all_states