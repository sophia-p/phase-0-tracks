# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# references the data in the  other file
# require_relative is a subset of require for local files.
# require, when the files end in .rb, are loaded as a source file.
# require gives access to more programming libraries like ruby gems created by the ruby community.
require_relative 'state_data'

class VirusPredictor

  #It initializes an instance of Virus Predictor and assigns the attributes to the 3 parameters for state, population, and population_density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @range = 0.5
  end

  #calls two methods: predicted deaths and speed of spread with the respective attributes as parameters

  def virus_effects
    range
    predicted_deaths
    speed_of_spread
  end

  #make subsequent methods private, can't be called outside of class object
  #what follows are helper methods
  #make user experience simpler, makes interface simpler, makes code less complicated, protect private data
  private

  def range
    if @population_density >= 200
      @range = 1.0
    elsif @population_density >= 150
      @range = 2.0
    elsif @population_density >= 100
      @range = 3.0
    elsif @population_density >= 50
      @range = 4.0
    else
      @range = 5.0
    end
  end

  #this is a private method.
  #calculates predicted deaths using population density, population, and prints that data with the state. Uses if statements
  #for differences in the calculations and rounds the calculations down.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if range != 5.0
      number_of_deaths = (@population * (0.5-(@range/10.0))).floor
    else number_of_deaths = (@population * (@range/100)).floor
    end


    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #this is a private method
  #Calculates speed of spread using population density and prints that calculation as part of a sentence following predicted_death's sentence

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.5*@range

    puts " and will spread across the state in #{speed} months.\n\n"

  end

# for every decrease of 50 people, speed reduces by 0.5
# x = -50. y = 0.5. For each x:y 2*x, 2*y
# 0.5 = 0.4 --> 1 : -.1 --> A : -.A (this are for pop density over 200)
  # the speed decreases by .5 per level, so speed += .5 is the same as speed = 1*.5 for pop density over 200
  # (population*.4).floor is the same as (population * (0.5 - (1/10))).floor as that would be (population * (.5 - .1)).floor and (population * .4).floor
# 1.0 = 0.3 --> 2 : -.2 --> A : -.A (this are for pop density >=150 and <200)
# 1.5 = 0.2 --> 3 : -.3 --> A : -.A (this are for pop density >=100 and <150)
# 2.0 = 0.1 --> 4 : -.4 --> A : -.A (this is for pop density >= 50 and <100)
# 2.5 = 0.05 --> 5 : -.45 --> A : -(.A-.0A) (this is for pop density <50)

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state




#Release 4: call each state as an instance of VirusPredictor using the has STATE_DATA found in the state_data.rb file.

STATE_DATA.each do |state_key, data|
  state = VirusPredictor.new(state_key, STATE_DATA[state_key][:population_density], STATE_DATA[state_key][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The state keys are strings and used hash rockets. The population_density and population keys in the nested hash are symbols and use colons.

# # What does require_relative do? How is it different from require?

# require_relative loads a file in the current directory for use as a source file while require is used for loading extensions or programming libraries like ruby gems. 

# # What are some ways to iterate through a hash?

# .each can be used to iterate through both the key and value at the same time, each_key and each_value can be used to iterate through just the keys or values, respectively.
# .map and .select can also traverse over a hash.

# # When refactoring virus_effects, what stood out to you about the variables, if anything?

# The variables were being used as arguments in the 2 methods being called superfluously as the variables were already being used in the methods as parameters.

# # What concept did you most solidify in this challenge?

# Calling methods from other methods and the arguments and parameters needed or not needed in calling them  (or writing them in the methods themselves).
# Also, it was good to work with a nested hash again.
