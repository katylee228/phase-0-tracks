# Method to create a list
# input: string of items separated by spaces ("carrots, apples, cereal, pizza")
# steps:
  # Take string of items as a parameter
  # put items into an array
  # Use a loop to make items in array keys in a new hash
  # set default quantity = 1 (value)
  # print the list to the console [maybe .each method?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a method by using 3 parameters (list item and quantity)
# List[item] = quantity
# Return list
# output: hash

# Method to remove an item from the list
# input: list item
# steps: create a method using 2 parameters
# use .delete method
# and return list
# output: hash

# Method to update the quantity of an item
# input: list item and quantity
# steps: create a method using 3 parameters
# List[item] = quantity
# return list
# output: hash

# Method to print a list and make it look pretty
# input: last hash
# steps: use .each method to print keys and values as items and as quantity
# output: strings

def create_list(str)
  hash={}
  array=str.split(' ')
  i=0
  while i<array.length
  hash[array[i]]=1
  i+=1
end
  hash
end


def add_list(list,item,quantity)
  list[item]=quantity
list
end

def remove_list(list,item)
  if list.keys.include? item 
    list.delete(item)
  else 
    puts "please "
  
  list
end

def update_list(list,item,quantity)
  list[item]=quantity
  list
end

def print_pretty(list)
  list.each do |item,quantity|
  puts "#{item}: #{quantity}"
  end


  end

#Driver code
puts "Type all the items you need."
input=gets.chomp
new_list=create_list(input)
add_list(new_list,'potato',2)
add_list(new_list,'chips',3)
add_list(new_list,'radish',5)
remove_list(new_list,'cherries')
update_list(new_list,'chips',10)
print_pretty(new_list)

=begin 
*What did you learn about pseudocode from working on this challenge?
Pesudo code makes it easy to do the initial solution
*What are the tradeoffs of using arrays and hashes for this challenge?
Since hash has keys and values, it's good to pair items and its quantity, but I can't find it with an index.
So when I iterate keys in the hash, I had to use an array which is useful when it comes to index.
*What does a method return?
The last line in the method
*What kind of things can you pass into methods as arguments?
In this case, we passed into a list(hash) into methods as arguments
*How can you pass information between methods?
define that new_list(hash) equals the return value of the first method.
And then use the newly defined hash as a parameter in other methods
What concepts were solidified in this challenge, and what concepts are still confusing?
After studying attributes in class, I was not certain if it is the best way to pass in arguments into other methods.
Anyway, it's getting more solidifying.

