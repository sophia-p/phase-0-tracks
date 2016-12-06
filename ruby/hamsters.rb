puts "Hamster's name?"
hamster_name=gets.chomp
puts "What is the hamster's volume level, from 1 to 10?"
hamster_volume=gets.chomp.to_f
puts "What is the hamster's fur color?"
color_fur=gets.chomp

adoption=""
while adoption != "N" && adoption != "Y"
	puts "Is the hamster a good candidate for adoption? Y/N"
	adoption = gets.chomp
end
	candidate=""
	if adoption == "Y"
		candidate = "good"
	else candidate = "bad"
	end

puts "What is the estimated age?"
age= gets.chomp.to_i
	if age == ""
		age == nil
	end

print "#{hamster_name} has a volume of #{hamster_volume} and #{color_fur} fur.
#{hamster_name} is a #{candidate} candidate for adoption and about #{age} years old."