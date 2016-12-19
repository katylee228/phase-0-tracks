class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
  
  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender 
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
  end
  
  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 

  def celebrate_birthday
    puts @age = @age + 1 
  end 

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include? reindeer_name
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking.push(reindeer_name)
      puts "The ranking of the reindeers:"
      puts @reindeer_ranking
    end 
  end 
      

  
end 

santa = Santa.new("agender", "black")
santa.speak
santa.eat_milk_and_cookies("mint chip cookie")



example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = {}
example_ethnicities.length.times do |i|
  santas[example_genders[i]] = example_ethnicities[i]
end 

santas.each do |gender, ethnicity|
  Santa.new(gender, ethnicity)
  puts "His/Her gender is #{gender} and his/her ethnicity is #{ethnicity}!"
end 

santa1 = Santa.new("female", "Latino")
santa1.get_mad_at("Vixen")
santa1.age = 25
santa1.celebrate_birthday
santa1.gender = "male"
puts santa1.gender 





i = 1 
while i < 101
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
puts "Santa#{i} gender: "
puts example_genders.sample
puts "Santa#{i} ethnicity:"
puts example_ethnicities.sample
puts "Santa#{i} age:"
santa.age = Random.new 
puts santa.age.rand(140)
i += 1 
end 








