# Virus Predictor

# I worked on this challenge [with: Will Farrel].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Allows us to add some pre-written code from another file within the same directory
#Since it's in the same directory, the load path is implicit
require_relative 'state_data'


class VirusPredictor

#sets up conditions for each new instance of the class, assigning three states; takes input of three parameters, and derives new instance with states
def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
end

#combines two methods and passes in their arguments to derive the output in one clean place; makes more compartmentalized
def virus_effects
  predicted_deaths 
  speed_of_spread 
end

private

#uses population density and population to project number of deaths
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

#declares formula to calculate the rate based on input of population density, prints rate.
  def speed_of_spread #in months
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


 def report

  STATE_DATA.each do |state, pop_data| 
    prediction = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    prediction.virus_effects
# p state 
# p pop_data
end 
end 
report



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#the rocket and the colon were both present to pair keys with values, might have been distinguished for readability
#Allows us to add some pre-written code from another file within the same directory
#Since it's in the same directory, the load path is implicit
#.each and .map, .map!
#They were being passed in as arguments, but weren't actually being used, because the methods were calling those attributes inline.
#Storing information vs. side effects. Helped solidify scope and conceptual relationships. 
