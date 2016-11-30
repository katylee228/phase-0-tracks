class Santa 
  attr_reader :ethnicity
  attr_accessor :gender, :age
  
  def speak
    puts "Ho,ho, ho! Haaaappy holidays!"
  end 
  
  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end

  def initialize(gender, ethnicity)
    @gender = gender 
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  
  def celebrate_birthday
    @age + 1 
  end
  
  def get_mad_at(reindeer)
    if @reindeer_ranking.include?(reindeer)
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking.insert(-1, reindeer)
    end
    end
    
  def about
  puts "gender: #{@gender}"
  puts "ethnicity: #{@ethnicity}"
  puts "age: #{@age}"
  puts "Reindeer rank: #{@reindeer_ranking}"
  end
end

santa1 = Santa.new("agender", "black")

santa2 = Santa.new("female", "Latino")
santa2.gender = "Transgender"
santa2.about
puts "#{santa2.celebrate_birthday}"
puts "#{santa2.age}"
puts "New rank: #{santa2.get_mad_at("Rudolph")}"

santa3 = Santa.new("bigender", "white")

santa4 = Santa.new("male", "Japanese")

santa5 = Santa.new("female", "prefer not to say")

santa6 = Santa.new("gender fluid", "Mystical Creature (unicorn)")

santa7 = Santa.new("N/A", "N/A")

santas = []

santas << santa1
santas << santa2
santas << santa3 
santas << santa4
santas << santa5
santas << santa6 
santas << santa7

Santas1 = []
Santas1 << santas[1].gender
Santas1 << santas[5].ethnicity
Santas1 << santas[2].age = 49


Santas2 = []
Santas2 << santas[4].gender
Santas2 << santas[6].ethnicity
Santas2 << santas[3].age = 120

p Santas1
p Santas2 








