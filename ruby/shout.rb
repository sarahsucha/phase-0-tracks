module Shout
  def self.yell_angrily(words)
  words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    ":P " + words + " :) :D"
  end

end

p Shout.yell_angrily("I'm so angry")
p Shout.yelling_happily("Life is good")
