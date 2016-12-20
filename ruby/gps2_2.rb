# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash that we will populate with items and quantities
  # string.split(' ') to turn it into an array
  # use loop/iteration to set each array item as a key with its default quantity (1?) as a value
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hashes with keys of item and values of quantity

def create_list(string)
	shopping_list = {}
	array_list = string.split(' ')
	array_list.each {|item|
		shopping_list[item]=1
	}
	return shopping_list #change p to return
end

# test_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list (will be passed shopping_list), item name, and optional quantity
# steps: Take item name and make it a key with the quantity as a value
# output: the existing hash with new item and respective quantity added
def add_item(list, item_name, quantity=1)
	list[item_name] = quantity
	return list
end

# add_item(test_list,"potato")




# Method to remove an item from the list
# input: list, item
# steps: find item on list provided and 
#remove the item (the key) and its associated quantity
# use delete_if on list
# output: the updated list

def remove_item(list,item_name)
	list.delete(item_name)
	return list
end

# remove_item(test_list,"carrots")


# Method to update the quantity of an item
# input: list, item, and new quantity
# steps: find item in list and set that key (the item name) equal
# to new quantity (new value)
# output: updated list

def update_quantity(list,item_name,quantity)
	list[item_name] = quantity
	return list
end

# update_quantity(test_list,"potato",7)

# Method to print a list and make it look pretty
# input: list
# steps: use .each to print key and values in a string
# output: a list of strings

def print_list(list)
	list.each{|item, quantity| puts "#{item}: #{quantity}"}
end

# print_list(test_list)

my_list = create_list("lemonade tomatoes onions ice-cream") #ice cream is hyphenated because we wouldn't know if it's for ice or cream
update_quantity(my_list,"lemonade",2)
update_quantity(my_list,"tomatoes",3)
update_quantity(my_list,"ice-cream",4)
remove_item(my_list,"lemonade")
update_quantity(my_list,"ice-cream",1)
print_list(my_list)

#Reflection
# What did you learn about pseudocode from working on this challenge?
	# Pseudocode can definitely help direct you're thinking in a
	# certain direction and set up where you're going with a method
	# before you start coding it.

# What are the tradeoffs of using arrays and hashes for this challenge?
	# Arrays are the easiest way to make the list of just the items in the string. 
	# Because the item was associated with a value, a hash was the best way to store the data.
	# However, because hashes are unordered lists, it made sense to make the array and then
	# set the array items as keys and feed each key the default value.
	# Also, because there is no index value for hashes, we couldn't use push or pop for
	# adding or removing, so for adding we just created a new key and value in the hash
	# and for deleting, we used the delete method.

# What does a method return?
	# We explicitly returned the results of each method.
	# Every returned a hash. Although print_list is told to print a string, 
	# print_list is technically still a hash (if .class is called on it, it says it is a hash).
# What kind of things can you pass into methods as arguments?
	# You can pass hashes, arrays, integers, strings, floats, and booleans. 
	# You can even make a parameter optional by setting it to 0, nil, or an empty string 
	# (depending on if it's a number or string)
# How can you pass information between methods?
	# I should note that the "shopping_list" that is returned in the first method
	# could also be called "list". 
	# You can pass information by calling method_b within method_a and passing method_b's required arguments.
	# Or, as in this case, set one method call as a variable and use that variable as an argument.
	# Methods cannot use another method's local variables. You would otherwise have to use global variables.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# Manipulating hashes and arrays was solidified in this challenge.
	# I could probably use more practice with passing information between methods.