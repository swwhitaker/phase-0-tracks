class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
  	woofs = "Woof! " * number
  	p woofs  
  end 
  
  def rollover
  	p "*rolls over*"
  end 
  
  def dog_years(human_years)
  	d_years = human_years * 7
  	p d_years
  end 
  
  def jump
  	p "Jump! Arf!"
  end 
  
  def initialize
  	p "Initializing new puppy instance."
  end 

end

Puppy_0 = Puppy.new 
Puppy_0.fetch("bone")
Puppy_0.speak(3)
Puppy_0.rollover
Puppy_0.dog_years(3)
Puppy_0.jump 

class Kitten  

	def purr 
		puts "Prrrrrrrrrrrrr"
	end 
	
	def do_nothing
		puts "Yup, it's just lying there."
	end 
	
	def initialize 
		p "A kitten is born!"
	end 
	
end 

kitten_0 = Kitten.new 
kitten_0.purr
kitten_0.do_nothing

kitten_counter = 0 
kittens = []
until kitten_counter == 50 
kittens << Kitten.new 
kitten_counter += 1
end 
puts kittens

kittens.each { |kitten| p kitten.purr } 
kittens.each { |kitten| p kitten.do_nothing } 