class	Santa 

  def initialize(gender,ethnicity,hat_style)
   	puts "initializing Santa instance"
   	@gender = gender
   	@ethnicity = ethnicity
   	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", 
   		"Cupid", "Donner", "Blitzen"]
    @age = 0 
    @hat_style = hat_style
  end

  def speak 
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday 
  	@age + 1 
  end 
  
  def get_mad_at(reindeer_name) 
  	@reindeer_ranking[-1] << @reindeer_ranking.index(reindeer_name)
  end
  
  def reindeer_ranking
  	@reindeer_ranking
  end
  
  def ethnicity
  	@ethnicity
  end
  
  def age
  	@age
  end

end 

# santa.speak

# santa.eat_milk_and_cookies("chocolate chip")

# santa = Santa.new 

santas = Santa.new("n/a", "purple", "fluffy")

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# hat_style = ["fluff ball", "normal hat","fluff ball", "normal hat","fluff ball", "normal hat","fluff ball"]


# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], hat_style[i])
# end

santas.get_mad_at("Rudolph")



p santas

