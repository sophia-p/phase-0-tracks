=begin

-split name into an array of 2 names and reverse the order
-store 	vowels and consonants as variables
-create separate method to check if letter is vowel or consonant
	and change to the next letter
-use map to change letter to the next one by calling the letter checker method

	
=end

def spy_name(name)
	name = name.split(' ').reverse
end