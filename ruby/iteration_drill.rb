# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.join(" * ") do |supply|
	p supply 
end 
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----


supply = zombie_apocalypse_supplies

supply.each_index do |first|
  supply.each_index do |second|
    if supply[first] < supply[second]
      supply[first], supply[second] = supply[second], supply[first]
    end
  end
end

zombie_apocalypse_supplies = supply

p zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def find_shotgun(array)
	index = 0 
	shotgun = "shotgun"
	while index < array.length
	  if array[index] == shotgun
			puts "Found a shotgun!"
    end
  index+=1
  end
end

find_shotgun(zombie_apocalypse_supplies)


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

zombie_apocalypse_supplies.each do |x|  
  zombie_apocalypse_supplies.each do |y|
    if zombie_apocalypse_supplies.length > 5
       zombie_apocalypse_supplies.delete(y) 
    end
  end  
end



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq 

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each {|type, year| puts "#{type} - #{year} *"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ---
extinct_animals.delete_if {|type, year| year >= 2000 }
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
updated

extinct_animals.each {|type, year| puts "#{type} - #{year-3 } *"}
 
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
extinct_animals.each do |type, year|
  case 
  when type == "Andean Cat"
    puts "#{type} = Animal Extinct"
  when type == "Dodo"
    puts "#{type} = Animal Extinct"
  when type == "Saiga Antelope"
    puts "#{type} = Animal Extinct"
  else puts "#{type} = Still around"
  end
end 


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
extinct_animals.delete_if{|type,year| type != "Passenger Pigeon"}.shift







