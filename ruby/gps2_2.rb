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
	p shopping_list
end

# test_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list (will be passed shopping_list), item name, and optional quantity
# steps: Take item name and make it a key with the quantity as a value
# output: the existing hash with new item and respective quantity added
def add_item(list, item_name, quantity=1)
	list[item_name] = quantity
	p list
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
	p list
end

# remove_item(test_list,"carrots")


# Method to update the quantity of an item
# input: list, item, and new quantity
# steps: find item in list and set that key (the item name) equal
# to new quantity (new value)
# output: updated list

def update_quantity(list,item_name,quantity)
	list[item_name] = quantity
	p list
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