def to_boolean (x)
  if x == 'yes'
     true
  else 
     false
  end
end

def age(dob)
   Time.now.year - dob 
end

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
     dob = gets.chomp.to_i
     dob = age(dob)
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
     garlic_bread = gets.chomp 
     garlic_bread = to_boolean(garlic_bread)
  
  puts "Would you like to enroll in the company’s health insurance?"
     health_insurance = gets.chomp
     health_insurance = to_boolean(health_insurance)
 
  puts "Enter any allergy's, When finished type done"
  
  allergy = gets.chomp
  until (allergy) == "done" || allergy == "sunshine"
    puts "Enter any allergy's, When finished type done"  
    allergy = gets.chomp
  end 
  
  case  
  
    when ( _name == "Drake Cula" ) || ( _name == "Tu Fang") 
      puts "Definitely a vampire"
      
    when (allergy == "sunshine") 
      puts "Probably a vampire"
    
    when age == dob && (garlic_bread == true || health_insurance == true)
      puts"Probably not a vampire."
    
    when age != dob && (garlic_bread == false || health_insurance == false) 
      puts "Probably a vampire"
  
    when age != dob && garlic_bread == false && health_insurance == false
      puts "Almost certainly a vampire."
    
    else
      puts "Results inconclusive"
    
  end 
  
  x + 1 
  x+=1 
  
end until x == employees

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
