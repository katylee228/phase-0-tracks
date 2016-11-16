puts "How many employees will be processed?"
employees = gets.to_i
i = 0 
while i < employees
puts "What is your name?"
name = gets.chomp
if name == "Drake Cula" || name == "Tu Fang"
  name = false
end

puts "How old are you?"
age = gets.to_i 
if age > 100 
  age = false 
else
  age = TRUE
end


puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp
if garlic == "y"
  garlic = TRUE
  elsif garlic == "n"
  garlic = false
end


puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance = gets.chomp 
if insurance == "y"
  insurance = TRUE
  elsif insurance == "n"
  insurance = false 
end

puts "Please name any allergies that you have one at a time"
allergies = ""
until allergies == "done"
puts "You can type done when finished"
allergies = gets.chomp
if allergies == "sunshine"
  allergies = false
break
end
end


if name == false && (age == true || garlic == true || insurance == true)
  puts "Definitely a vampire"

elsif allergies == false && (garlic == true || age == true || insurance == true)
puts "Probably a vampire"

elsif age == true && (garlic == true || insurance ==  true)
  puts "Probably not a vampire"


elsif age == false && (garlic ==false || insurance == false)
  puts "Probably a vampire"


elsif age == false && garlic == false && insurance == false 
  puts "Almost certainly a vampire"

else
  puts "Result inconclusive"
end
i += 1 
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






