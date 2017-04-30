# make a hash for the design application 

# ask for user input for name,age,number of children,theme, and if they like the color orange

# print results 

# ask if they need to change any information 

# write a conditional statement to adjust values in hash 

# print results 



def to_boolean (x) # changes input to boolean 
   if x == 'yes'
   true
   else false
   end
end

require 'pp' # prints results in more user friendly value 



interior_design_application = {} # hash for user input 

puts "What is your name?"
interior_design_application[:name] = gets.chomp

puts "What is your age?"
interior_design_application[:age] = gets.to_i

puts "How many children do you have?"
interior_design_application[:num_children] = gets.to_i

puts "What decor theme do you prefer?"
interior_design_application[:decor_theme] = gets.chomp

puts "Do you like the color orange(yes/no)?"
interior_design_application[:like_orange] = to_boolean(gets.chomp)

puts "Here is your application"
pp interior_design_application

puts "Do you need to change any information? (yes/no)"
change_info = to_boolean(gets.chomp)


if change_info == true # allows user to re input values 
	puts "What field would you like to change? Choose from the following list : 
	name, age, children, decor, orange, if list is right type exit"
	
	field = gets.chomp
	
	case 
	    
		when field == "name"
			 puts "What is your name?"
			 interior_design_application[:name] = gets.chomp
	
		when field == "age"
		     puts "What is your age?"
		     interior_design_application[:age] = gets.to_i

		when field == "children"
		     puts "How many children do you have?"
		     interior_design_application[:num_children] = gets.to_i
	
		when field == "decor"
		     puts "What decor theme do you prefer?"
		     interior_design_application[:decor_theme] = gets.chomp
	
		when field == "orange"	
		     puts "Do you like the color orange?"
		     interior_design_application[:like_orange] = to_boolean(gets.chomp)
			
	else
		 puts "No change added"
	end	
end

puts "Here is your application"

pp interior_design_application