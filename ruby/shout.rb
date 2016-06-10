# module Shout
#   def self.yell_angrily(words)
#   words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     ":P " + words + " :) :D"
#   end
#
# end

# p Shout.yell_angrily("I'm so angry")
# p Shout.yelling_happily("Life is good")

module Shout
  def yell_angrily(words)
  words + "!!!" + " :("
  end

  def yelling_happily(words)
    ":P " + words + " :) :D"
  end

end

class AngryBird
  include Shout
end

class Duck
  include Shout
end

blue = AngryBird.new
p blue.yell_angrily("goohoo yachagoo anna")

donald = Duck.new
p donald.yell_angrily("Aw, phooey")

daisy = Duck.new
p daisy.yell_angrily("Don't be such a big old grump")
p daisy.yelling_happily("Good luck, darling!")
