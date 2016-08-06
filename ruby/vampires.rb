##Vampire Detector -  for DBS Phase 0 assignment 4.4

#establishes number of loops before flagging and ending survey
puts "How many employees are we processing today?"
number_employees = gets.to_i
employees_processed = 0


#sets up loop
until employees_processed >= number_employees

#question 1 establishes whether name is not known vampire alias

puts "Hello, and welcome to the interview!"
puts "What is your name?"
name = gets.chomp
name = name.downcase.tr(" ", "_")
if name != "drake_cula" 
	namechecksout = true
else 
	namechecksout = false  
end

if name == "tu_fang" 
	namechecksout = false 
end 

#questions 2 & 3 establish age and whether it checks out (roughly) 
#with birth year 

puts "Tell me a little about yourself. How old are you?"
age = gets.to_i
puts "What year were you born?"
year_born = gets.to_i
if 2016 - year_born == age
	age_checks_out = true
else age_checks_out = false 
end

#question 4 establishes whether the garlic aversion checks out for a non-vampire 

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_response = gets.chomp
garlic_bread_response = garlic_bread_response.downcase
if garlic_bread_response == "no" 
	garlic_checks_out = false 
else garlic_checks_out = true 
end

#question 5 establishes whether the employee's non-vampire mortality checks out

puts "Would you like to enroll in the company's health insurance?"
insurance_response = gets.chomp.downcase
if insurance_response == "no" 
 mortality_checks_out = false 
 else mortality_checks_out = true 
end

#question 6 for release 4 - adds looping question to detect 
#aversion to sunshine 

finished = false 
 
puts "Please list any allergies you may have, one at a time, then press 'Enter'. When finished, type 'done' and press 'Enter'."
while finished == false 
response = gets.chomp
response = response.downcase
if response == "done" 
	finished = true
	puts "Thank you."
end
#here is where the sunshine response ends the question & survey;
#triggers result of 'probably a vampire' by changing values per validator logic, 
#except in case of name alias triggering result: 'Certainly a Vampire'
if response == "sunshine"
	finished = true 
	age_checks_out = false
	garlic_checks_out = true 
	mortality_checks_out = false
end	
end


#end of survey

#these are to space things out for readability & to signal end of survey to the user  
puts "


End of Survey

"
puts "Result:"

#here is the validator logic. 
#Note that I decided that "certainly" overrides "probably" 
#in case of sunshine allergy _and_ vampire alias name concurrently. 
if namechecksout != true 
	puts "Certainly a vampire."
elsif age_checks_out && (garlic_checks_out || mortality_checks_out)
	puts "Probably not a vampire"
elsif age_checks_out == false && (garlic_checks_out || mortality_checks_out)
	puts "Probably a vampire"
elsif age_checks_out == false && (garlic_checks_out && mortality_checks_out) == false 
	puts "Almost certainly a vampire"
else puts "Results inconclusive"
end

#these line breaks are to space things out for the user 
puts "


"

#for flagging 
employees_processed = employees_processed + 1 

#this is to let the user know their progress
puts "Employees processed: #{employees_processed} of #{number_employees}"
puts "

"
end 


puts "You have processed all your employees. Thank you for using Vampire Detector!"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
