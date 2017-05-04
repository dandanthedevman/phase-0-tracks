# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # convert given list (string) into an manageable container (array)
  # iterate through the container and place them as keys in our hash
  # set default quantity to 1 
  # print the list to the console [can you use one of your other methods here? use print method with name print_list below]
# output: [created grocery list with items and quantity]

def create_list(items)
	new_list = {}
	item_arr = items.split
	item_arr.each do |item|
		add_item(new_list, item)
	end
	print_list(new_list)
	
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
# add item name and quantity as key and value to list (hash)
# output: [updated grocery list (hash)]

def add_item(list, item_name, quantity = 1)
	list[item_name] = quantity
	list
end

# Method to remove an item from the list
# input: list, item name
# steps: remove item name (key) from hash
# output: updated grocery list (hash)

def remove_item(list, item_name)
	list.delete_if { |item, quantity| item === item_name }
end

# Method to update the quantity of an item
# input: list, item name, quantity
# steps: replace quantity of item in list with updated value
# output: updated grocery list (hash)

def update_quantity(list, item_name, quantity)
	list.each do |item, qty|
		if item === item_name
			list[item] = quantity
		end
	end
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and print each item
# output: print item (key) + quanity (value)

def print_list(list)
	list.each do |item, qty|
		puts "#{item} = #{qty}"
	end
end

# DRIVER CODE 


list = create_list("Lemonade Tomatoes Onions Ice_Cream")
update_quantity(list, "Lemonade", 2)
update_quantity(list, "Tomatoes", 3)
update_quantity(list, "Onions", 1)
update_quantity(list, "Ice_Cream", 4)

remove_item(list, "Lemonade")

update_quantity(list, "Ice_Cream", 1)

print_list(list)


# Reflection 

# 1. I learned how important sudo code is in a small and large scale operation. 
# Using the most descriptive language possible must be used to help people understand the code.

# 2. The use of methods gets changed around and new ways of addressing the problem have to be found out.

# 3. A method will the modified items in the input

# 4. you can pass arrays, hashes, integers strings floats and bullions .

# 5. with variables 

# 6. irritation was solidified as well as sudo coding. some items with methods and where to use them are still a little fuzzy.


