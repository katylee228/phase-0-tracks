=begin 
*get user's input (spy's name)
*divide the first and last name by space between them and put them in an array
*write a method to swap them
*write a method that changes all of the vowels to the next vowel 
*write at method that changes all of the consonants to the next consonants
*print the fake name
=end



def swap(name)
  name_array = name.split(' ')
  name_array[0], name_array[1] = name_array[1], name_array[0]
  name_array.join(' ')
end

def next_vowel(name)
  vowels = ['a','e','i','o','u']
  name = swap(name).split('')
  name_new = name.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  name_new.join
end

def next_consonant(name)
  name = next_vowel(name).downcase.split('')
  non_consonant = ['a','e','i','o','u', ' ']
  name_new = name.map do |letter|
    if non_consonant.include?(letter)
      letter
    elsif non_consonant.include? (letter.next)
    letter.next.next
    elsif letter.downcase == 'z'
    letter = 'b'
    else
      letter.next
    end
  end
  name_new.join
end

def capitalize(name)
  name = next_consonant(name)
  name_array = name.split(' ')
  name_array[0].capitalize + ' ' + name_array[1].capitalize
end



two_names = {}
loop do 
puts "What's your name?"
real_name = gets.chomp 
break if real_name == 'quit'
two_names[real_name] = capitalize(real_name)
end 

two_names.each do |real_name, fake_name|
  puts "#{fake_name} is actually #{real_name}!"
end 


 

