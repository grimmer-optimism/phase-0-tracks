module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(noises)
  	noises + "!!!!" + " :)"
  end

end


class Baby
	include Shout
end

class Champion
	include Shout
end

#Driver Code
#p Shout.yell_angrily("Nine Nine Nine")
#p Shout.yelling_happily("Byeaaaaaaaah")

baby = Baby.new

p baby.yell_angrily("Waaaaaaaaah")
p baby.yelling_happily("Googoogaaagaa")

winner = Champion.new

p winner.yell_angrily("Nooooooooo")
p winner.yelling_happily("We did it")
