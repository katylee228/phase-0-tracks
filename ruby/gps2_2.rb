# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split each value with each space
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: hash (key => item, value => quantity)

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  #create a new hash using keys(items) and values(quantity)
  #merge it to the original hash
# output: hash

# Method to remove an item from the list
# input: item name
# steps:
  #delete the item with its quantity using delete function(?)
  #print the list to the console
# output: hash

# Method to update the quantity of an item
# input: specific item's quantity
# steps:
  #update the quantity of an item by using a new equation
# output: hash 

# Method to print a list and make it look pretty
# input: print a string that explains the shopping list
# steps:
  # print a string
  #print each item and its quantity on one line
# output: hash 

puts "What's in your shopping list?"
items = gets.chomp 


def create_list(str)
array1 = str.split(' ')
hash1 = Hash[array1.collect { |item| [item, 1]}]
p hash1
end

list1 = create_list(items)


puts "What do you want to add?"
add_item = gets.chomp
array2 = add_item.split(' ')
h = Hash[*array2]

def add_list(list_1, list_2)
  list = list_1.merge(list_2)
  p list
end
  
list2 = add_list(list1, h)

puts "What do you want to delete?"
delete_item = gets.chomp

def delete_list(item, list)
  list.delete(item)
  p list
end

list3 = delete_list(delete_item, list2)


puts "What do you want to update?"
update_item = gets.chomp
array3 = update_item.split(' ')

def update_list(item, quantity, list)
  list[item] = quantity
  p list
end

final = update_list(array3[0], array3[1], list3)

puts "Your shopping list:"
final.each { |key, value| puts "#{key} #{value}"}

=begin

What did you learn about pseudocode from working on this challenge?
  Pseudocode allows me to plan and predict what the output will look like.
What are the tradeoffs of using arrays and hashes for this challenge?
  I had to figure out how to transform arrays to hash.
What does a method return?
  It returns one or more values from a Ruby Method
What kind of things can you pass into methods as arguments?
  key, value, list
How can you pass information between methods?
  by creating a method that has parameters that allows the information to pass in.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I could know what "pass in" means now.


  
  

  
