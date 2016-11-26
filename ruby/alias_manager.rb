real_names =[]
fake_names =[]
spy_name = ""
until spy_name == "quit"
puts "What's your name?"
spy_name = gets.chomp

break if spy_name == 'quit'




class Array
  def swap!(a,b)
    self[b] = self[b], self[a]
  end
end


swap_name = spy_name.split(' ').swap!(0,1).join(' ').downcase

def vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  consons = ["d", "h", "n", "t"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif consons.include?(char)
      char.next.next
    elsif "z".include?(char)
      "b"
    else
      char.next
    end
  end
  str_new.join
end


final = vowel_adv(swap_name).split('!').map! { |name| name.capitalize}.join(' ')


puts "Your fake name is #{final}."


fake_names << final

real_names << spy_name

end

i = 0 
while i < fake_names.length 
puts "#{real_names[i]} is also known as #{fake_names[i]}."
i += 1 
end