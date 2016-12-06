puts "Hamster's name?"
hamster_name=gets.chomp
puts "What is the hamster's volume level, from 1 to 10?"
hamster_volume=gets.chomp.to_f
puts "What is the hamster's fur color?"
color_fur=gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption=gets.chomp
puts "What is the estimate age?"
age= gets.chomp.to_i
	if age == ""
		age == nil
	end