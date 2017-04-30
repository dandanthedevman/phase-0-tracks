#Release 0

def hey
	puts "Hey!"
	yield(name1, name2)
end

hey { |name1, name2| puts "yeah you guys #{name1} and #{name2}"}


#Release 1
#Array
skate_array = [ "bluetown", "welcome", "shred Shop", "spitfire"]
#Hash
snowboards_hash = { board: "public", boots: "32", bindings: "union" }

#Print Array and hash 
p skate_array.each
p snowboards_hash.each 

#Using .each 
#Hash 
snowboards_hash.each do |type_of_equipment, brand|
	 puts "those are cool #{type_of_equipment}, 
	 #{brand} makes some great stuff. "
end 
#Array 
skate_array.each do |board|
     puts "that's a cool #{board}deck!"
end

#Using .map and .map! 


skate_array.map do |board| 
	board.upcase
end

p skate_array 

skate_array.map! do |board|
	 board.upcase
end 




#Uses .map to print a modified (uppercase) hash without permanent changes.
bikes_hash.map do |type, bike|
  p "I want a new #{type.upcase} bike. Maybe a #{bike.upcase}!"
end

#Release 2
random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#1 A method that iterates through the items, deleting any numbers that are less than 5.
puts "delete if"
p random_array.delete_if {|num| num < 5 }
p random_hash.delete_if {|num| num < 5 }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#2 A method that keeps any number less than five
puts "keep if"
p random_array.keep_if {|num| num < 5 }
p random_hash.keep_if {|num| num < 5 }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#3 A method that filter out even numbers
puts "select if even"
p random_array.select {|num| num.even? }
p random_hash.select {|num| num.even? }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#4 A method that will remove items from a data structure until the condition in the block evaluates to false:
puts "select if even (with bash)"
p random_array.select! {|num| num.even? }
p random_hash.select! {|num| num.even? }
