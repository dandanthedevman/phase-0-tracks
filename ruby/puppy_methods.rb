class Puppy

def intialize 
	puts "initializing new puppy instance"
 
end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times {puts "woof"}
  end 

  def roll_over
  	"*rolls over*"
  end

  def dog_years (h_year)
  	dog_years = h_year * 7
 		dog_years
  end
  
  def personal_space (distance)
  	comfort_d = 3 
  	if distance < comfort_d 
  		puts "needy dog"
    else 
  		puts "whats wrong bud"
  	end 
  end

  end
puppy = Puppy.new

puppy.fetch("bone")

puppy.speak(4)

p puppy.roll_over

p puppy.dog_years(6)

puppy.personal_space(2)