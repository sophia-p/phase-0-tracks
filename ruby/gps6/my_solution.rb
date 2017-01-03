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

  #It initializes an instances of Virus Predictor and assigns the attributes to the 3 parameters for state, population, and population_density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @range = 0
  end

  #calls two methods: predicted deaths and speed of spread with the respective attributes as parameters

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #make subsequent methods private, can't be called outside of class object
  #what follows are helper methods
  #make user experience simpler, makes interface simpler, makes code less complicated, protect private data
  private

  #this is a private method.
  #calculates predicted deaths using population density, population, and prints that data with the state. Uses if statements
  #for differences in the calculations and rounds the calculations down.
  def predicted_deaths
    # predicted deaths is solely based on population density
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

  #this is a private method
  #Calculates speed of spread using population density and prints that calculation as part of a sentence following predicted_death's sentence

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

# for every decrease of 50 people, speed reduces by 0.5
# x = -50. y = 0.5. For each x:y 2*x, 2*y
  def range
    if @population_density >= 200
      @range = 0
    elsif @population_density >= 150
      @range = 1
    elsif @population_density >= 100
      @range = 2
    elsif @population_density >= 50
      @range = 3
    else
      @range = 4
    end
  end
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

