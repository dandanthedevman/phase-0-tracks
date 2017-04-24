
#define method: use the .next on the indext of each letter
def encrypt(string)
index = 0
  while index < string.length
      if string[index] == "z"
  		string[index] = "a"
  	else
    string[index] = string[index].next!
  end
  index += 1
  end
end

#prints result of each letter using the above method (for Release 3)
#p encrypt("abc")
#p encrypt("zed")

#define method decrypt to print the previous letter for each string
def decrypt(str)
alpha = "abcdefghijklmnopqrstuvwxyz"
	p alpha[(alpha.index(str[0]) -1)] + alpha[(alpha.index(str[1]) -1)] + alpha[(alpha.index(str[2]) -1)]
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
	string = gets.chomp.to_s
	p encrypt(string)
elsif pass == "decrypt"
	puts "What is the password?"
	str = gets.chomp.to_s
	p decrypt(str)
else
	puts "I'm sorry, I didn't understand you."
end
#p decrypt(encrypt("abc"))


