
# Set up Q&A prompts
# Clean up formatting of responses if necessary
# Create inital hash set with responses
# Print hash result; Ask user if edits needed
# 	if none; skip
# 	else allow user to enter a key name, then update the value 
# 		Print hash again. 

puts "Welcome to the custom design response repository!"
puts "What was the client's name (First_Last)"
	client_name = gets.chomp.capitalize
puts "What was the client's preferred decor theme?"
	client_theme = gets.chomp.downcase
puts "What main theme color was selected?" 
	client_main = gets.chomp.downcase
puts "Which accent color was selected?"
	client_accent = gets.chomp.downcase
puts "How many rooms will be designed?"
	client_rooms = gets.to_i
puts "Does the client prefer solids or textures?"
	client_pref = gets.chomp.downcase
puts "Was this client a referral? (y/n)"
	referral_yn = gets.chomp.downcase
	if referral_yn == "y" || "yes"
		client_referred = true 
	else client_referred = false
	end

responses = {
	client: client_name, 
	decor_theme: client_theme, 
	color_main: client_main,
	color_accent: client_accent,  
	number_rooms: client_rooms,
	solids_textures: client_pref,
	referral: client_referred,
}

p responses

# to space things out for the user to read easily: 
puts "

"

# option to change a response. 
puts "Would you like to change any of your responses? If so, type in the name of the category and press enter. Otherwise, type 'None' and hit enter."
change_key = gets.chomp.downcase
if change_key == "client"
	puts "What was the client's name (First_Last)"
	responses[:client] = gets.chomp.capitalize
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == "decor_theme"
	puts "What was the client's preferred decor theme?"
	responses[:decor_theme] = gets.chomp.downcase
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == "color_main"
	puts "What main theme color was selected?" 
	responses[:color_main] = gets.chomp.downcase
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == color_accent
	puts "Which accent color was selected?"
	responses[:color_accent] = gets.chomp.downcase
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == rooms
	puts "How many rooms will be designed?"
	responses[:rooms] = gets.to_i
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == solids_textures
	puts "Does the client prefer solids or textures?"
	responses[:solids_textures] = gets.chomp.downcase
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == referral
	puts "Was this client a referral? (y/n)"
	responses[:referral] = gets.chomp.downcase
	if referral_yn == "y" || "yes"
		client_referred = true 
	else client_referred = false
	end
	p responses
	puts "Your responses have been updated. Thank you for using our program! Goodbye."
elsif change_key == "none"
	puts "Thank you for using our program! Goodbye."
else puts "I'm sorry I didn't understand that. Your original responses will be stored. Thank you for using our program! Goodbye."
end 



