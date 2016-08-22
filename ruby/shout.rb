# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#   	words + "!!!!" + "Ooooooh yeah! :)"
#   end 
# end

# Shout.yell_angrily("dammit")
# Shout.yell_happily("dayum")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_happily(words)
  	words + "!!!!" + "Ooooooh yeah! :)"
  end 
end

class Punk_Rocker
	include Shout
end 

class Ghost
	include Shout
end 

Punk_Rocker = Punk_Rocker.new
p Punk_Rocker.yell_angrily("Boo")
p Punk_Rocker.yell_happily("Nice")

Ghost = Ghost.new
p Ghost.yell_angrily("Boo")
p Ghost.yell_happily("We meet again.")