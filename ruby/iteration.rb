#Release 0

def hey
	puts "Hey!"
	yield("Dan", "Stan")
end

hey { |name1, name2| puts "yeah you guys #{name1} and #{name2}"}


#Release 1
#Array
skate_array = [ "bluetown", "welcome", "shred Shop", "spitfire"]
#Hash
snowboards_hash = { board: "public", boots: "32", bindings: "union" }

#Print Array and hash 
#p skate_array.each
#p snowboards_hash.each 

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

#Normal map
modified_skate = skate_array.map do |board| 
  board.upcase
end

p skate_array 

p modified_skate

#Dangerous map
skate_array.map! do |board|
	board.upcase
end 

p skate_array	

#Release 2
#1. Deletes any numbers that are less than 3.
	#method .delete_if 
array1 = [2, 4, 6, 9, 12, 23]

hash1 = { first: 1, second: 2, third: 3, fourth: 4}

p array1.delete_if {|num| num < 3 }

p hash1.delete_if {|number, digit| digit < 3 }

#2 keeps any number less than five
	#method .keep_if

array2 = [2, 4, 6, 9, 12, 23]

hash2 = { first: 1, second: 2, third: 3, eighth: 8}

p array2.keep_if {|num| num < 5 }

p hash2.keep_if {|number, digit| digit < 5 }

#3 filter out even numbers
	#method .select 

array3 = [2, 4, 6, 9, 12, 23]

hash3 = { first: 1, second: 2, third: 3, eighth: 8}

p array3.select {|digit| digit.even? }

p hash3.select {|number, digit| digit.even? }


#4 A method that will remove items from a data structure until the condition in the block evaluates to false:
	#method .take_while 

array4 = [2, 4, 6, 9, 12, 23]

hash4 = { first: 1, second: 2, third: 3, eighth: 8}

p array4.take_while {|digit| digit <= 9}

p hash4.take_while {|number, digit| digit <=3}







