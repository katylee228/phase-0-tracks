
def greeting
    puts "Hi, how are you"
    3.times {yield}
end
puts " Initialize Block"
greeting {puts "I am doing well"}
puts "Block Complete"

arr = [ "Cupertino", "Alameda", "San Francisco", "Seoul", "Vancouver"]

h = {"name1" => "Ravi", "name2" => "Katy", "age1" => 25, "age2" => 25}

arr.each do |locations|
    puts locations.reverse.chop.reverse
end

h.each do |key,value|
    puts key
    puts value
end

arr.map do |cities|
    puts cities.upcase

end

h.map do |keys,values|
    puts keys.upcase
end

arr1=[1,2,3,4,5,6,7,8,9,10]
arr2=[1,5,7,9,10]

h = {"username1" => "Superman", "username2" => "Batman", "number1" => "1", "number2" => "100"}

puts arr1.reject {|x| x < 5}
puts arr1.select { |x| x < 5 }
puts arr1.keep_if { |x| x%2 == 0 }
puts arr2.delete_if { |x| x < 7}


puts h.reject {|keys,values| values.length == 6}
puts h.select {|keys,values| values.length == 1}
puts h.keep_if {|keys,values| keys == "username1"}
puts h.delete_if {|keys,values| keys == "username1"}