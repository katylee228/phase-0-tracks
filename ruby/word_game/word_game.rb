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
=end 

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
