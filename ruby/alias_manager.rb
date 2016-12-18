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
	-store data for when user quits using hash keys
	(old name, changing it to a symbol) and values(new names)
	-use each to print hash key/value pairs in sentence when done
=end
def next_vowcon(oldlet) #actually takes in the whole name (not just 1 letter), since it is only split to an array of [first_name, last_name]
  vowel = ['a','e','i','o','u']
  rot_vow = vowel.rotate #reverses vowel array
  consonant = 'bcdfghjklmnpqrstvwxzy'.split('')
  rot_cons= consonant.rotate #reverses consonant array
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
  prevname.map!{|undercover| #Put each name through plus-1 letter changer
    next_vowcon(undercover)
  }
  newname = prevname.map{|profession| #Just capitalize each name in array
    profession.capitalize!
  }
  return newname.join(' ')
end

aliases={} #create empty array to hold before and after names
starter_name="" #will hold name user types in
mission_name="" #will hold name after it goes through name changer
	loop do
		puts "Type a name to receive your mission name.
		Type 'quit' to exit"
		starter_name = gets.chomp
		if starter_name == "quit"
			break
		else
			mission_name = name_changer(starter_name) #but name through name changer, assign it to mission_name variable
			hash_starter_name = starter_name.to_sym #change it to symbol so it can be a key
			p "#{mission_name} is your mission name."
			
		end 
	aliases[hash_starter_name]=mission_name	#populate hash with before names as keys, after names with values
	end
aliases.each {|starter,mission| puts "#{mission} is the mission name for #{starter}."}