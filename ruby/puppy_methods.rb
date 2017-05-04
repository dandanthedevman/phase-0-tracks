class Puppy

	def initialize 
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

class	Interviewer 

	def initialize
	end 

	def ask_name(a_name)
		interviewer_name = a_name 
		puts "Your interviewer name is #{interviewer_name}"
	end 

	def gets_tape_recorder
		p "ready to record"
	end

end

interviewers = []

counter = 0

while counter <= 50
	interviewer = Interviewer.new 
	counter += 1
	interviewers << interviewer
end


interviewers.each do |x|
	puts "whats your name"
	x.ask_name(gets.chomp)
	x.gets_tape_recorder
end

p interviewers 
# #puppy = Puppy.new

# #puppy.fetch("bone")

# #puppy.speak(4)

# #p puppy.roll_over

# p puppy.dog_years(6)

# puppy.personal_space(2)