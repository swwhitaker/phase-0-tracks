# Release 0 - Bring Santa to life
# Create Santa Class and give the three methods described

class Santa
	attr_accessor :gender, :ethnicity, :age
	attr_reader :reindeer_ranking
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(gender, ethnicity, age)
		@gender = gender
		@ethnicity = ethnicity
		@age = age 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance..."
	end
	
	##Getter Methods (could be deleted, since covered by attr_accessor, but left because it's in the rubric)
	def gender
		@gender
	end 
	
	def ethnicity
		@ethnicity
	end 
	
	def reindeer_ranking
		@reindeer_ranking
	end
	
	def age
		@age
	end

	##Setter Methods
	def celebrate_birthday
	@age =+ 1	
	end 
	
	def get_mad_at(reindeer)
		reindeer_ranking.delete(reindeer)
		reindeer_ranking.insert(8, reindeer)
	end 
	
	def reassign_gender(new_gender)
		@gender = (new_gender)
	end
	
end

#Testing the Methods
Santa1 = Santa.new("trans_m-f", "Latin@", 0)
Santa1.speak
Santa1.eat_milk_and_cookies("gingersnap")


santas = []
example_genders = ["agender", "trans_m-f", "trans_f-m" "female", "bigender", "male", "female", "gender fluid", "N/A", "never you mind"]
example_ethnicities = ["black", "Latin@", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], rand(140))
end

example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], rand(140))
end

##Testing Methods 
p santas 

Santa1.celebrate_birthday
p Santa1.age
#returns 1, as expected

p Santa1.ethnicity
#returns "Latin@", as expected 

Santa1.get_mad_at("Dasher")
p Santa1.reindeer_ranking
#Dasher is relegated to the end, as expected 

Santa1.reassign_gender("trans_f-m")
p Santa1.gender 
#Changes from m-f to f-m as expected 

p Santa1.age

p Santa1.ethnicity

##santa_generator
santa_count = 150 
santa_count.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(140))
end
p santas
	
	
	
