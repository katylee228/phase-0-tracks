=begin 
*pseudo code*

* create a word game class 
* create an initialize method with a parameter
  * its parameter is user1 input (word)
* create a guess method with a parameter
  * its parameter is another user2 input (alphabet)
    * IF the input is the same as the user1 input (word), it prints congratulatory message
      * create an attribute (game_status = true) and when the user give an answer, game_status goes false.
    * IF the input is included in the original word, it will appear on the console
      * Since the guess_count is limited by the length of the word, create an word_count attribute and add '1' by each input 
      * create a special character attribute as a default so that it can print like "____" 
        *using the index of the string, delete one of the "____" and insert a letter to the string 
      * game_status should still be true 
    * IF the input is not included in the original word, it will print "try again"
      * Since the guess count is limited by the length of the word, create an word_count attribute and add '1' by each input
      * game_status should still be true 
* Using loop with the guess_count attribute, allow users to guess as many as the length of the word only
   * Use IF statement so that it will print the result until the length of the word, so IF they can't guess the word, it will print taunting message


class Word_Game
  attr_reader :word_array, :guess_count
   attr_accessor :game_over

  def initialize(word)
    @word = word
    @special_chr = "*" * word.length 
    @game_over = false 
    @guess_count = 0 
    @word_array =[]
  end 

  def guess(alphabet)

      if @word == alphabet
        puts "congratulations!"
        @game_over = true
      
      elsif @word_array.include? alphabet
        puts "You entered the letter you already typed!"
        
      elsif @word.include? alphabet
        @guess_count += 1
        @word.length.times do |index|
          if @word[index] == alphabet
            puts @special_chr.chop.insert(index, alphabet)
          end
        end
        @word_array << alphabet
         @game_over = false
      
      else 
        @guess_count += 1 
        puts "Please try again!"
        @word_array << alphabet
        @game_over = false 
      end
  end 
end 


puts "Welcome to Word Game World!"
puts "Please enter a word that another user can guess:"
user1 = gets.chomp 
word_game = Word_Game.new(user1)

while !word_game.game_over
  if word_game.guess_count < user1.length 
    puts "Please guess a word that another user typed:"
    user2 = gets.chomp
    word_game.guess(user2)
  else 
    puts "Sorry you failed the game..."
    break
  end 
end 

=end

#I added a new game with a different approach

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
  end
  
    
  
  def guess_for_user2(user2_letter)
    array = @user1_word.split('')
    array.each_index do |index|
      if array[index] == user2_letter
        @special_letter[index] = user2_letter
      end 
    end
   new_word = @special_letter.join('')
  end
   
   def game_over
     @guess_time -= 1 
      if @guess_time == 0 
       @is_over = true
     end
    end 
     
  
  

  
end

puts "USER1: Please type a word:"
user1 = gets.chomp 
wordgame = WordGame.new(user1)

while !wordgame.is_over
  puts "USER2: Please guess a letter:"
  user2 = gets.chomp
  puts wordgame.guess_for_user2(user2)

  if user1 == wordgame.guess_for_user2(user2)
    puts "Congratulations!"
    break
  
  elsif wordgame.game_over
    puts "Sorry, you lost a game..."
  end
end 