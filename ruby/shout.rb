=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :-)"
  end

end

p Shout.yell_angrily("No")
p Shout.yelling_happily("Yes")
=end


=begin
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end


class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

=end

module Shout 
  def bad(str)
    p "#{str}!!!! :("
  end
  def good(str)
    p "#{str}!!!! :-)"
  end
end

class Happy
  include Shout
end

class Angry
  include Shout
end

happy = Happy.new
happy.good("Yes")

angry = Angry.new
angry.bad("No")



