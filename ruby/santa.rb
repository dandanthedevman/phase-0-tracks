class	Santa 
  
  attr_reader :ethnicity

  attr_accessor :gender, :age 

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
  	@reindeer_ranking.delete_if {|name| name == reindeer_name}
    @reindeer_ranking.push(reindeer_name)
  end

end 

# DRIVER  CODE ------------------------------------------------------------------------------

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

hat_style = ["fluff ball", "normal hat","fluff ball", "normal hat","fluff ball", "normal hat","fluff ball"]


50.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, hat_style.sample)
end

# puts " #{santas.age} + #{santas.ethnicity}"

# santas.get_mad_at("Rudolph")

# santas.gender = "grey"

p santas

