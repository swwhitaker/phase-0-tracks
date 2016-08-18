# Release 0 - Bring Santa to life
# Create Santa Class and give the three methods described

class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end
	
	##Getter Methods 
	def gender
		@gender
	end 
	
	def ethnicity
		@ethnicity
	end 
	
	def reindeer_ranking
		@reindeer_ranking	
	
end

#Testing the Methods
Santa1 = Santa.new("trans_m-f", "Latin@")
Santa1.speak
Santa1.eat_milk_and_cookies("gingersnap")

santas = []
example_genders = ["agender", "trans_m-f", "trans_f-m" "female", "bigender", "male", "female", "gender fluid", "N/A", "never you mind"]
example_ethnicities = ["black", "Latin@", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas