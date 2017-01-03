# create WordGame class 
# create a method that takes a parameter from user1 
# create a Guess method that takes a string from user2 
  # guesses are limited by the length of the parameter from user1
  # repeated guess do not count against the user2
  # gives continual feedback (e.g. if user1's input is unicorn and user2's input is c, the result will be ___c___)
  # IF user2 guesses gives all the letters within the length of the word that user1 gave, user2 will have congratulatory message, ELSE taunting message
# add driver code 


class WordGame
  attr_reader :is_over

  def initialize(user1_word)
    @user1_word = user1_word 
    @special_letter = Array.new(@user1_word.length, '_ ')
    @is_over = false 
    @guess_time = @user1_word.length 
    @new_letter = ""
  end
  
    
  
  def guess_for_user2(user2_letter)
    array = @user1_word.split('')
    array.each_index do |index|
      if array[index] == user2_letter
        @special_letter[index] = user2_letter
    
      end 
    end
   @new_letter = @special_letter.join('')
  end
   
   def game_over
     @guess_time -= 1 
      if @guess_time == 0 
       @is_over = true
     end
    end 
    
    def repeat_check(user2_letter)
      if @new_letter.include? user2_letter
        puts "You typed a letter that you already entered. Please type again!"
        @guess_time += 1 
      else 
        puts guess_for_user2(user2_letter)
      end 
    end 

end

puts "USER1: Please type a word:"
user1 = gets.chomp 
wordgame = WordGame.new(user1)

while !wordgame.is_over
  new_str = ""
  puts "USER2: Please guess a letter:"
  user2 = gets.chomp
  wordgame.repeat_check(user2)
  
  if user1 == wordgame.guess_for_user2(user2)
    puts "Congratulations!"
    break
  
  elsif wordgame.game_over
    puts "Sorry, you lost a game..."
  end
end 