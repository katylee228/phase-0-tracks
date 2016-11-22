=begin

puts "What's your client's name?"
Name = gets.chomp 

puts "How old is your client?"
Age = gets.to_i 

puts "How many children does your client have?"
Num_kid = gets.to_i 

puts "What theme of decoration does your client want?"
Decor = gets.chomp


client1 = {
  name: Name,
  age: Age,
  num_kid: Num_kid,
  decor: Decor
}

p client1

puts "Are there any keys that you want to update?"
update = gets.chomp
if update == "none"
  p client1
  exit!
end


puts "Please enter a new name!"
new_value = gets.chomp

client1[new_value] = client1[update.to_sym]
client1.delete(update.to_sym)

p client1

exit!

=end

