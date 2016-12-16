#Write your own method that takes a block
def greeting
  puts "Hello, how are they?"
  name1 = "Steve"
  name2 = "Diane"
  3.times {yield(name1, name2)}
  puts "I am glad to hear that!"
end 

greeting { |name1, name2| puts "#{name1} and #{name2} are fine!"}

#use each, map, and map!
alphabets = ["a", "b", "c", "d", "e"]

alphabets.each do |alphabet|
  puts alphabet
  "Hello"
end
p alphabets


alphabets.map! do |alphabet|
  alphabet.next
end
p alphabets


actor_movie = {
"Ryan Gosling" => "The Notebook",
"Rachel McAdams" => "About Time",
"Colin Firth" => "Bridget Jones's Baby",
"Jennifer Lawrence" => "Hunger Game"
}

actor_movie.each do |star, movie|
  puts "#{star} was in #{movie}!"
end
p actor_movie

update_movie = actor_movie.map do |star, movie|
  puts "#{star} was in #{movie}!"
  star.upcase
end
p update_movie
#it changes into an array


array1 = [1,2,3,4,5,6,7,8,9,10]
p array1.reject {|number| number < 3}
p array1.select {|number| number > 7}
p array1.keep_if {|number| number >2}
p array1.delete_if {|number| number%2 == 0}

hash1 = {"user1" => "Batman", "user2" => "Superman", "user3" => "Spiderman", "user4" => "Boogieman"}
p hash1.reject {|user, status| status.length == 8}
p hash1.select {|user, status| user == "user1"}
p hash1.keep_if {|user,status| status.length < 9}
p hash1.delete_if {|user, status| user.include? "2"}









