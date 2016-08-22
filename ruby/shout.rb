module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
  	words + "!!!!" + "Ooooooh yeah! :)"
  end 
end

Shout.yell_angrily("dammit")
Shout.yell_happily("dayum")