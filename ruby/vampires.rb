wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false


puts "Hello, and welcome to the interview!"
puts "What is your name?"
name = gets.downcase.tr(" ", "_")
puts "Pleasure to meet you, #{name}! Tell me a little about yourself. How old are you?"
age = gets.to_i
puts "What year were you born?"
year_born = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_response = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
insurance_response = gets.chomp



if age = (2016 - year_born) && (garlic_bread_response || insurance_response = yes)
	puts "Probably not a vampire."
elsif age != (2016 - year_born) && (garlic_bread_response || insurance_response = no)
	puts "Probably a vampire."
elsif age != (2016 - year_born) && (garlic_bread_response && insurance_response = no)
	puts "Almost certainly a vampire."
unless name = Drake_Cula || Tu_Fang 
	age = nil
	year born = nil
	puts "Definitely a vampire."
else 
	puts "Results inconclusive."
end
