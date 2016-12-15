=begin 
*get input of client's name, age, number of children, decor theme, etc from users
*create a hash that has keys and values 
  *keys should be symbols as labels and values should be users' input 
*print the hash 
*give the users the opportunity to update a key 
  *if she/he says "none", skip it 
*print the hash 
=end


puts "Client's information"

puts "Name: "
name = gets.chomp 

puts "Age: "
age = gets.to_i

puts "Number of children: "
num_children = gets.to_i 

puts "Decoration theme: "
decor_theme = gets.chomp 

puts "Are you in the US? (yes or no)"
residence = gets.chomp 
if residence == "yes"
  residence = true 
elsif residence == "no"
  residence = false 
end 

client = {
  name: name,
  age: age,
  num_children: num_children,
  decor_theme: decor_theme,
  residence: residence
}

p client

puts "Please enter a key that you want to update"
key_update = gets.chomp 
if key_update == "none"
  p client 
  exit!
end


puts "please enter a value that you want to update for the key"
value_update = gets.chomp

p client[key_update.to_sym] = value_update
p client 





