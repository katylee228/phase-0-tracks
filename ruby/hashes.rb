=begin

puts "What's your client's name?"
name = gets.chomp 

puts "How old is your client?"
age = gets.to_i 

puts "How many children does your client have?"
num_kid = gets.to_i 

puts "What theme of decoration does your client want?"
decor = gets.chomp


client1 = {
  name: name,
  age: age,
  num_kid: num_kid,
  decor: decor
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

