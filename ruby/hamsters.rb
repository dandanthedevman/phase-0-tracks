
puts "Whats the hamsters name?"
 hamster_name = gets.chomp 

puts "What volume level does the hamster like?"
 volume = gets.chomp.to_i 

puts "What color is the hamsters fur?"
 fur = gets.chomp

puts " Is this hamster a good candidate for adoption"
  def to_boolean (x)
   if x == 'yes'
   true
   else false
   end
  end
 adoptability = gets.chomp 
 adoptability = to_boolean(adoptability)


puts "whats the hamsters estimated age?"
 age = gets.chomp
  if age == "" 
     age = nil 
  end 




  
  puts " Hamsters name : " 
  p hamster_name 

  
  puts " Volume level preferred :" 
  p volume

 
  puts " Fur color :" 
  p fur

  
  puts " hamster adoptable? :" 
  p adoptability

  
  puts "age:" 
  p age 
