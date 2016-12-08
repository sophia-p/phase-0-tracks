puts "How many employees will be processed?"
employees = gets.chomp.to_i

while employees > 0 
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	yearmatch = true
	byear = gets.chomp.to_i
		if (2016-byear) == age
			yearmatch 
		else
			yearmatch = false
		end
	puts "Our company cafeteria serves garlic bread.
	Should we order some for you?"
		order_g = gets.chomp
		if order_g == "yes".upcase || order_g == "yes".capitalize! || order_g == "yes"
			order_g=true
		else 
			order_g=false
		end

	puts "Would you like to enroll in the company's health insurance?"
		health = gets.chomp
		if health == "yes".upcase || health == "yes".capitalize! || health == "yes"
			health = true
		else 
			health = false
		end


		case 
		when name == "Drake Cula" || name == "Tu Fang" ||name == "Nosferatu"
			puts "Definitely a vampire"	
		when yearmatch && (order_g || health)
			puts "Probably not a vampire."
		when !yearmatch && !order_g && !health
			puts "Almost certainly a vampire."
		when !yearmatch && (!order_g || !health)
			puts "Probably a vampire."
		else 
			puts "Results inconclusive."

		end
	employees -= 1
end


