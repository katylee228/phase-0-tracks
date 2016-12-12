# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative compliments built-in method to access a file that is relative to a file containing 
# 'require_relative' statement 
# require => absolute path
require_relative 'state_data'

class VirusPredictor
  
  attr_accessor :population_density, :population, :state

#when creating a new object with parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
#use two methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
#use three parameters to get the value of number_of_deaths (depending on population density)
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

#takes two parameters to get the value of speed depending on population density
#the value of speed will be printed
  def speed_of_spread 
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
   if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, poulation_info|
  allstate = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
     allstate.virus_effects
end

#========================================================================

#REFLECT
# The hash in a hash has symbols as keys whereas the outer hash has strings as keys.
# require_relative compliments built-in method to access a file that is relative to a file containing
# We use 'require' when we need to get access to files and the code that is inside.
# use each method to iterate through a hash
# I realized that there is no need of variables in private methods since we have writable attributes
# attributes, loading path etc




