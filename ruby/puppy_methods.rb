class Puppy
  #When an instance of that class is initialized, ruby will run the initialize method without calling in driver code.
  #When you misspelled the "initialize" here, ruby will recognize it as an instance method (not initialize method).
  
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
    puts "woof!"*number
  end

  def roll_over 
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    puts human_years*7
  end
  
end

puppy = Puppy.new 
puppy.fetch("ball")
puppy.speak(4)
puppy.roll_over
puppy.dog_years(3)