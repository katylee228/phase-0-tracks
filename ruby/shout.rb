=begin
module Shout 
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)" 
  end 
end 

Shout.yell_happily("Hello")
Shout.yell_angrily("Goodbye")
=end 

module Shout
  def good(word)
    puts "#{word}!!! :)"
  end 

  def bad(word)
    puts "#{word}!!! :("
  end 
end 

class Happily
  include Shout  
end 

class Angrily
  include Shout  
end 


happily = Happily.new 
happily.good("Hello")

angrily = Angrily.new
angrily.bad("Goodbye")
