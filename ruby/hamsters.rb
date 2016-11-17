puts "What's your hamster name?"
name = gets.chomp
puts "What spueaky is it? (1~10)"
volume = gets.to_i

i = 10 
while i < volume 
puts "Give me the number from 1 to 10."
volume = gets.to_i
i += 1 
end

puts "What color is it?"
color = gets.chomp

puts "Is it a good candidate for adoption? (y/n)"
adoptability = gets.chomp
if adoptability == "y"
  adoptability = "good"
elsif adoptability == "n"
  adoptability = "bad"
end 


puts "Estimated age?"
age = gets.to_i
if age == ""
  age = NIL
  elsif age != String 
  puts "Please enter number!!!!"
  age = gets.to_i
end


puts "#{name} is #{color} color hamster. Its squeaky level is #{volume}. It's a #{adoptability} candidate for adoption. And its age is #{age}."
