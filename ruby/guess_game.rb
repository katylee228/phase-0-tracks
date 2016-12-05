class Guess_game
  attr_accessor :user1, :user2
  
  def initialize
    @user1 = user1
    @user2 = user2
  end
  
  def feedback(user1, user2)
    if user1.include? user2
      puts "good"
    else
      puts "nope, please try again"
    end
  end

  
end
  




guess = Guess_game.new
puts "Please enter a word"
user1 = gets.chomp 

i = 0 
while i < user1.length
puts "Please guess the word"
user2 = gets.chomp 
guess.feedback(user1, user2)

i += 1 
end





