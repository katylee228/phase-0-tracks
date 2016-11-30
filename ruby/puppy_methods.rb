class Puppy
def initialize 
    puts "Initializing new puppy instance ..."
end

     def fetch(toy)
       puts "I brought back the #{toy}!"
       toy
     end
      def speak(n)
         x = n.to_i
         x.times do 
         puts " woof!"
         end 
      end
    def roll_over
        puts "*Rolls Over*"
    end
    def dog_years(y)
        z = y.to_i * 7
        puts "#{z} dog years!"
    end
def smart_dog(string)
 if string == "y"
   puts "Smart dog!"
 else puts "Dumb dog :disappointed: "
 end
end
end 
Puppy.new.fetch("toy")
Puppy.new.speak(5)
Puppy.new.roll_over
Puppy.new.dog_years(3)
Puppy.new.smart_dog("y")




class Gymnast

def initialize 
  p "Initialize Gymnast"

end

def jump(n)
  arr2 = []
  a = "She jumped #{n} times!"
  arr2 << a
end

def flip(n)
  arr1 = []
  i = 0 
  while i < n 
  b = "She flipped!"
  arr1 << b
  i += 1 
end 
  arr1
end

end

i = 1 
while i < 50
p final = Gymnast.new.jump(5) + Gymnast.new.flip(2) 
i += 1 
end

p final.each { |a| a + "!"}
