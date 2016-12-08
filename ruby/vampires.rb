puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
yearmatch = true
byear = gets.chomp.to_i
	if (2016-byear) == age
		yearmatch
	end

puts "Our company cafeteria serves garlic bread.
Should we order some for you?"
garlic = gets.chomp
	if garlic == "yes".upcase || garlic == "yes".capitalize! || garlic == "yes"
		true
	else 
		false
	end

puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp

if yearmatch && garlic
	print "Not a vampire"
end

