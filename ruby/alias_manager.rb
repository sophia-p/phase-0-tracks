=begin

-split name into an array of 2 names and reverse the order
-downcase the names
-store 	vowels and consonants as variables
-in same method as vowel and consonant variables, 
	check if letter is vowel or consonant
	and change to the next letter
-use map to change letter to the next one by calling the letter checker method
-use capitalize method to capitalize the first letters of the names
-join name back together	
=end

=begin
	-use puts to ask for input
	-use gets.chomp to receive input 
	-implement input and use name changer method
	-store data for when user quits using hash keys(old name) and values(new names)

=end
def next_vowcon(oldlet) 
  vowel = ['a','e','i','o','u']
  rot_vow = vowel.rotate
  consonant = 'bcdfghjklmnpqrstvwxzy'.split('')
  rot_cons= consonant.rotate
  i=0
  while i < oldlet.length
    if vow_index = vowel.index(oldlet[i])
      oldlet[i] = rot_vow[vow_index]
    else
      cons_index = consonant.index(oldlet[i])
      oldlet[i] = rot_cons[cons_index]
    end
  i +=1
  end
  return oldlet
end


def name_changer(prevname)
  prevname = prevname.downcase.split(' ').reverse
  prevname.map!{|undercover|
    next_vowcon(undercover)
  }
  newname = prevname.map{|profession|
    profession.capitalize!
  }
  return newname.join(' ')
end

puts "Type a name to receive your mission name.
Type 'quit' to exit"
starter_name = gets.chomp
if starter_name == 'quit'
	p 'Thank you'
else
	mission_name = name_changer(starter_name)
	starter_name.to_sym
	p "#{mission_name} is your mission name"
end
hash = {}
hash[starter_name]=mission_name
p hash