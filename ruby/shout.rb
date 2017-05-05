# Release 1 ----------------------


# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + ":)"
#   end
# end


# p Shout.yell_angrily("Hey")

# p Shout.yell_happily("Hi")


# Release 3 -----------------------

module Shout 

	def yell_angerily(words)
		puts words + "!!!" + " :("
  end

  def yell_happily(words)
   	puts words + "!!!" + ":)"
   end

end 


class	Cop

include Shout 

end 


class	Protester

include Shout 

end 

protester = Protester.new
protester.yell_angerily("Resist")
protester.yell_happily("Peace and love")

cop = Cop.new 
cop.yell_angerily("back up")
cop.yell_happily("We are one with you")









