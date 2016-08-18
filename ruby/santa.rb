# Release 0 - Bring Santa to life
# Create Santa Class and give the three methods described

class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(name)
		puts "Initializing Santa instance #{name}"
	end
end

# Testing methods
Santa1 = Santa.new("Santa1")
Santa1.speak
Santa1.eat_milk_and_cookies("gingersnap")