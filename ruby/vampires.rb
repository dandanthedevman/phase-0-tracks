


puts "How many employees will you be processing"

employees = gets.chomp.to_i

x=0 

begin 
  puts "Enter Applicant"

  puts "What is your name?"
    _name = gets.chomp
  
  puts "How old are you?"
    age = gets.chomp.to_i 
  
  puts "What's your year of birth?"
   def age(dob)
   2016 - dob 
   end
  
   dob = gets.chomp.to_i
   dob = age(dob)
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    def to_boolean (x)
     if x == 'yes'
     true
     else false
     end
    end
    garlic_bread = gets.chomp 
      garlic_bread = to_boolean(garlic_bread)
  
  puts "Would you like to enroll in the company’s health insurance?"
     def to_boolean (x)
     if x == 'yes'
     true
     else false
     end
    end
   health_insurance = gets.chomp
     health_insurance = to_boolean(health_insurance)
 
  puts "Enter any allergy's, When finished type done"

  until (allergy = gets.chomp) == "done" 
        
    if allergy == "sunshine"
       allergy = "sunshine"
       break 
    end
    
    puts "Enter any allergy's, When finished type done"  
  end 
  
  vamp_result = case  
  
  when _name == "Drake Cula" && _name == "Tu Fang"
    "Definitely a vampire"
  
  when (allergy == "sunshine") 
    "Probably a vampire"
  
  when age == dob && (garlic_bread == true || health_insurance == true)
    "Probably not a vampire."
  
  when age != dob && (garlic_bread == false || health_insurance == false) 
    "Probably a vampire"

  when age != dob && garlic_bread == false && health_insurance == false
    "Almost certainly a vampire."
  
  else
    "Results inconclusive"
  
  end 
  
  x + 1 
  x+=1 
  
  p vamp_result
  
end until x == employees

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
