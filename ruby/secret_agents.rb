=begin
  - get the input
  - get the length 
  - until the index = length -1 
  - on each one get the index number 
    - change that latter to the next latter.
=end
=begin
  - store the alphabet in a var
  - utile the the index length -1
  - match the latter in the latter in the alphabet
  - get the index value in the latter in alphabet
  - return the latter that is 1 less then the index value
  - store it in our var
=end


def encrypt(string)
  i =0
  newStr=""
  while i <=string.length-1 do
    
    if string[i] == "z"
      newStr[i] = "a"
    else 
    newStr += string[i].next
    end
    i += 1
  end
 return newStr
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = 0
  while i < string.length
      index = alphabet.index(string[i])
      string[i] = alphabet[index-1]
    i += 1
  end
  return string
end
# First we call the encrypt methods thats shift all the latter back one spot 
# and after that we called the decrypt method which return it back to its
# original position.

=begin
 - ask the if the want to encrypt or decrypt
 - if they say encrypt 
 -  ask them to input the password
    - call the encrypt method by pass the password
    -print the result to th screen
    and exit 
  - if they say decrypt 
 -  ask them to input the password
    - call the encrypt method by pass the password
    -print the result to th screen
    and exit 
  Otherwise 
  print message you didn't choose any method
 
=end

puts "Do you want to encrypt or decrypt"
 input = gets.chomp
  if input == "encrypt"
    put "Please enter the password"
    str_password= gets.chomp.downcase
    result = encrypt(str_password)
  elsif input == "decrypt"
    put "Please enter the password"
    str_password= gets.chomp.downcase
    result = decrypt(str_password)
  else 
    put "You didn't enter any value"
  end
  print result