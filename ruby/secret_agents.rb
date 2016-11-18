
def encrypt(str)
  i=0
  while i<str.length
  if str[i]=="z"
    print str[i]="a"
    i+=1
  end
    print str[i].next
    i+=1
end
  end
def decrypt(str)
  i=0
  while i<str.length
  if str[i]=="a"
    print str[i]="z"
    i+=1
  end
  print (str[i].ord-1).chr
  i+=1
end
end
puts "would you like to decrypt or encrypt your password?"
input=gets.chomp
puts "Enter your password"
password=gets.chomp
  if input=="decrypt"
    decrypt(password)
    elsif
    input=="encrypt"
    encrypt(password)
  end

  #release 4 did not work for us.  We were getting an error about defining a method for length.