=begin
Arrays: 
You can use a variable to access an array.
When accessing an index value that doesn't exist 
in an array, you get nil
	
=end





=begin
-Prompt user for info on name (string), age (integer), 	
number of children (integer), decor theme (string), budget (integer), based on game MASH (boolean)
-Convert data to appropriate type and store data in hash
-Print when done
-Ask if user needs to update
	-if none, skip
	-if user types a key, ask for new value and update key
-Print finished version, exit program
=end

interior_dec = {}

puts "What is your name?"
app_name = gets.chomp
interior_dec[:name] = app_name

puts "What is your age?"
app_age = gets.chomp.to_i
interior_dec[:age] = app_age

puts "How many children do you have?"
app_children = gets.chomp.to_i
interior_dec[:children] = app_children

puts "What is your decor theme?"
app_theme = gets.chomp
interior_dec[:decor_theme] = app_theme

puts "What is your budget?"
app_budget = gets.chomp.to_f
interior_dec[:budget] = app_budget

puts "Are you living your life based on the game MASH?"
app_mash = gets.chomp
	if app_mash == "yes".upcase || app_mash == "yes".capitalize! || app_mash == "yes"
		app_mash = true #set to true
	else 
		app_mash = false
	end
	interior_dec[:mash] = app_mash

p interior_dec
puts "If you do not need to make any changes, please type 'none'. 
If you need to make a change, please type the category."
	input = gets.chomp
	if input == "name"
		puts "Type your name"
		app_name = gets.chomp
		interior_dec[input.to_sym] = app_name
	elsif input == "age"
		puts "Type your age"
		app_age = gets.chomp.to_i
		interior_dec[input.to_sym] = app_age
	elsif input == "children"
		puts "Type the number of children you have."
		app_children = gets.chomp.to_i
		interior_dec[input.to_sym] = app_children
	elsif input == "decor_theme"
		puts "Type your decor theme"
		app_theme = gets.chomp
		interior_dec[input.to_sym] = app_theme
	elsif input == "budget"
		puts "Type your budget"
		app_budget = gets.chomp
		interior_dec[input.to_sym] = app_budget
	elsif input == "MASH"
		puts "Are you living your life based on the game MASH?"
		app_mash = gets.chomp
		if app_mash == "yes".upcase || app_mash == "yes".capitalize! || app_mash == "yes"
			app_mash = true #set to true
		else 
			app_mash = false
		end
		interior_dec[input.to_sym] = app_mash
	elsif input == "none"
	end
p interior_dec
