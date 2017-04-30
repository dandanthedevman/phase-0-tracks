# Release 0

#array_1 = [32, 46, 21, 12, 5, 7]


def search_array(array, interger)
	 index  = 0 
     while index < array.length

     	if array[index] == interger
             p index
        end 
     index += 1
     end
end


# Release 1

def fib(index)
  output = [0, 1]
  i = 1
  index = index - 2
    index.times do
         z = output[i] + output[i - 1]
         output << z
  i += 1
  end
  output
end

# Release 2

# Bubble sort 

	# Take an array

	# 1. Find the number in first position (A) and the number in the second position (B) of that set

	# 2. Check to see if number in first position (A) is greater than the number in the second position (B)

	# 3. If the first number in the first position is greater than the number in the second position, switch the position of the two numbers so that the order is now B, A

	# 4. If A is not greater than B, put A is a new set of numbers, 

	# 5. Move on to evaluate the number in the second (B) and third position (C)

	# 6. Continue through the entire array 

	# 7. Keep going through steps 1-6 until no more number positions change.

def bubble_sort(array)

	 swaped = false 
	 array[0...-1].each_with_index do |element, i|
	 	 if element > array[i+1]
	 		array[i], array[i+1] = array[i+1], array[i]
	 		swaped = true
	 	 end
	 end 

	 bubble_sort(array) if swaped
end




























