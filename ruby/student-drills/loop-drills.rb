# A for loop executes the code once for each variable in the expression passed in
# The break happens after the code has been executed for each variable
# Uncomment the loop below and run it to see what happens. The syntax looks like this:
# for i in 0..10
#   puts "The value is #{i}"
# end

# Drill: create a for loop that counts up to 20, prints out each number along the way, and also prints each number multiplied by 3
# ----

# for i in 0..20
# 	puts "#{i} times 3 is #{i*3}"
# end



# while loops are used to evaluate a conditional and the loop will end when that condition is no longer met.
# In this loop, the condition is your way of breaking the loop.
# Uncomment the loop below and run it to see what happens. The syntax looks like this:
# x = 0
# while x <= 10
#   p "x is still less than 10"
#   x += 1
# end

# Drill: Create a while loop that builds a 10-character long string by adding your favorite letter each time.
# ----
# x = 1
# while x <=10
# 	p "g"*x
# 	x += 1
# end


# until loops are somewhat the opposite logically from while loops. The loop will continue until a condition is evaluated true.
# Again, the condition is your way of breaking the loop.
# Uncomment the loop below and run it to see what happens. The syntax looks like this:

# can_drive = false
# age = 1
# until can_drive
#   age += 1
#   if age == 18
#     can_drive = true
#   end
#   p age
# end

# Drill: Create an until loop that builds a 10-character long string by adding your favorite letter each time.
# ----

# x = 1
# until x == 10
# 	p "g"*x
# 	x += 1
# end

# x = 10
# until x == 1
# 	p "g"*x
# 	x -= 1
# end

# .times loop
# The times loop is used to call the loop n times. You can either pass in no block or a block to evalute.
# The number used before .times is used to break the loop.
# Uncomment the loop below and run it to see what happens. The syntax looks like this:
# 10.times do
#   p "You're doing it, Peter!"
# end

# 10.times do |i|
#   p i*2
# end

# Drill: Create a loop that prints your name 5 times.
# ----

# 5.times do
# 	p "Sophia"
# end

# .each loop
# We use an each loop to iterate through a data structure, passing a block in to execute on each item in that data structure.
# .each loops ends when they have gone through all of the items in the data structure.
# Uncomment the data structures and loops below and run them to see what happens. The syntax looks like this:
books = ["Oryx and Crake", "The Odyssey", "Tale of Two Cities", "Pride and Prejudice", "The Corrections"]

# books.each do |title|
#   p title.downcase
# end

recipe = {"flour" => "2.25 cups", "chocolate chips" => "2 cups", "sugar" => ".75 cup", "brown sugar" => ".75 cup", "butter" => "1 cup", "baking soda" => "1 tsp", "salt" => "1 tsp", "vanilla extract" => "1 tsp", "egg" => "2"}

# recipe.each do |ingredient, amount|
#   if amount.include?("cup")
#     p "#{ingredient} is measured in cups"
#   end
# end

# Uncomment the `books` and `recipe` data structures before attempting the drills. Commented out code doesn't get run.
# Drill: Using the books array above, use .each to print out any book with more than two words in its name. 
# Drill: Using the recipe hash above, use .each to return any ingredients and their amount in a user friendly way, like a recipe would be printed.
# ---

books.each do |title|
	if title.split(' ').length >2
		p title
	end
end

recipe.each do |ingredient, amount|
	p "#{amount} #{ingredient}"
end




