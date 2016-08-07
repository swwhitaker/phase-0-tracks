#Method declarations

#encrypts password by moving letter forward one in alphabet
def encrypt(password)
	count = 0
	while count < password.length
    #leaves empty spaces as is
		if password[count] != " "
      #moves letter forward one in alphabet
			password[count] = password[count].next
		end
		count += 1
	end
    #resolves issue with 'ab' instead of 'a' when moving forward from 'z'
    if password.include? 'ab'
      password.sub!('ab', 'a')
    end
	password
end

#decrypts messages encrypted by above method by moving letter back one
def decrypt(password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	count = 0
	while count < password.length
		if password[count] != " "
      #finds index of letter in alphabet and subtracts 1
			target_index = alphabet.index(password[count]) - 1
			previous_letter = alphabet[target_index]
      #changes letter to letter previous in alphabet
			password[count] = previous_letter
		end
		count += 1
	end
	password
end

#OUR DRIVER CODE

#Ask to decrypt or encrypt
puts "Would you like to encrypt or decrypt a password?"
direction = gets.chomp.downcase

#Ask for the password
puts "What is the password?"
pword = gets.chomp.downcase

#Performs operation requested
if direction == encrypt
  encrypt(password)
  pword = encrypt(password)
else
  decrypt(password)
  pword = decrypt(password)
end

puts pword
# result = decrypt(encrypt("swordfish"))
# puts result
# The method first encrypts the word swordfish and then can use that output
# to decrypt the phase back to its original state

#encrypt algorithm
#start at index [0]
# -at current index, change letter to next letter in alphabet
# -if a space character is present, leave space

#decrypt algorithm
#defining "abcdefghijklmnopqrstuvwxyz" as variable
# -if space in password, leave it be
# -find index of letter in alphabet
# -Once target index found, move back one index
# -save new index as password to decrypt