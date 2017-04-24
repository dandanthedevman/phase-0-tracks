
#define method: use the .next on the indext of each letter
def encrypt(str)
  index = 0
  while index < str.length
      if str[index] == "z"
  		 str[index] == "a"
      else
         str[index] = str[index].next!
      end
         index += 1
  end
  puts str
end

#prints result of each letter using the above method (for Release 3)
#p encrypt("abc")
#p encrypt("zed")

#define method decrypt to print the previous letter for each string

def decrypt(str)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < str.length
        str[index] = alpha[(alpha.index(str[index])-1)]
        index += 1
  end
  p str
end

#print test results of above method
#p decrypt("bcd")
#p decrypt("afe")

# Running the test below to see if it works in a full circle

#Driver Code
puts "Would you like to encrypt or decrypt a password?"

pass = gets.chomp

if pass == "encrypt"
	puts "What is the password?"
	str = gets.chomp
    str = encrypt(str)
elsif pass == "decrypt"
	puts "What is the password?"
	str = gets.chomp
	str = decrypt(str)
else
	puts "I'm sorry, I didn't understand you."
end
#p decrypt(encrypt("abc"))


