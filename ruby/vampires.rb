puts "How many employees will be processed?" 
employees = gets.chomp.to_i #convert for arithmetic

while employees > 0 
	puts "What is your name?" # Question 1
	name = gets.chomp
	puts "How old are you?"   # Question 2
	age = gets.chomp.to_i
	puts "What year were you born?" # Question 3
	yearmatch = true
	byear = gets.chomp.to_i
		if (2016-byear) == age # roughly check age by using current year
			yearmatch # yearmatch is true still
		else
			yearmatch = false
		end
	puts "Our company cafeteria serves garlic bread. 
	Should we order some for you?" # Question 4
		order_g = gets.chomp
		if order_g == "yes".upcase || order_g == "yes".capitalize! || order_g == "yes"
			order_g = true #set to true
		else 
			order_g = false
		end

	puts "Would you like to enroll in the company's health insurance?" #Question 5
		health = gets.chomp
		if health == "yes".upcase || health == "yes".capitalize! || health == "yes"
			health = true
		else 
			health = false
		end
	allergy = "" # Allergy variable, made accessible outside of loop for case statement
	loop do
		puts "List any allergies. Type 'done' when finished."
		allergy = gets.chomp
		if allergy == "sunshine" || allergy == "done"
			break
		end 
	end

	case # case statements
	when (!yearmatch && (!order_g || !health))|| allergy == "sunshine"
		puts "Probably a vampire."
	when name == "Drake Cula" || name == "Tu Fang" ||name == "Nosferatu"
		puts "Definitely a vampire"	
	when yearmatch && (order_g || health)
		puts "Probably not a vampire."
	when !yearmatch && !order_g && !health
		puts "Almost certainly a vampire."
	else 
		puts "Results inconclusive." # most general match last
	end
	employees -= 1 # decrease employee count after each survey taken
	puts "Actually, never mind! What do these questions have to do with anything? 
	Let's all be friends." 
end


