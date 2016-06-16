# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

require_relative 'state_data'
# require_relative takes the file from the local / relative folder and inputs the called file into the current file. Require may be useful if the file isn't relative and you need to use an absolute path.

class VirusPredictor

# Initiating a new instance of a virus predictor. Inputting data for new istances for evaluation.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calling methods so that all information related to the virus effects is in one place.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Method which predicts death rates depending on how dense the population is and prints out a statement.
  def predicted_deaths
    # predicted deaths is solely based on population density

    case @population_density
      when 200...
        number_of_deaths = (@population * 0.4).floor
      when 150...200
        number_of_deaths = (@population * 0.3).floor
      when 100...150
        number_of_deaths = (@population * 0.2).floor
      when 50...100
        number_of_deaths = (@population * 0.1).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Method which predicts infection rates depending on how dense the population is and prints out a statement.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 200...
        speed += 0.5
      when 150...200
        speed += 1
      when 100...150
        speed += 1.5
      when 50...100
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

# STATE_DATA.each do |state_name, state_info|
#   # p state_info

#   state = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
#   state.virus_effects
#  #p state_info[:population_density]

#  end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
