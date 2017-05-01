# Spy Names

# Define method for spy names

# Asks for name

# Swaps first and last names

# takes any vowels and moves it to next vowel 

# takes and constants and moves it to the next constant 

#spy_encode method 
def spy_encode(str)
  vowel = "aeioua"
  consonant = "bcdfghjklmnpqrstvwxyzb"
  index = 0
  while index < str.length
    if str[index].include?("a") || str[index].include?("e") || str[index].include?("i") || str[index].include?("o") || str[index].include?("u")
      str[index] = vowel[(vowel.index(str[index])+1)]
    elsif str[index] == " "
      str[index] == " "
    else
      str[index] = consonant[(consonant.index(str[index])+1)]
    end
  index += 1
  end
  
end

#Array created for output of spy names:
code_names = {

  real_name: [],

  spy_name: [],

}

#loop created for input of multiple names
user_input = "na"
until user_input == "exit"

  #Field Start 
  puts "Welcome agent what's your name?"

  real_spy_name = gets.chomp 

  name_array = real_spy_name.split(' ')

  name_array.rotate!

  new_name = name_array.join(' ')

  new_name = spy_encode(new_name)
  
  p new_name
  #code_names[:spy_name] << new_name
  #code_names[:spy_name] << real_spy_name
  
  
  #option to exit
  puts "If done type exit"
  user_input = gets.chomp

end

p code_names[:real_name] + "is" + code_names[:spy_name]













