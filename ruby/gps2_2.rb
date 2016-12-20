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

test_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list (will be passed shopping_list), item name, and optional quantity
# steps: Take item name and make it a key with the quantity as a value
# output: the existing hash with new item and respective quantity added
def add_item(list, item_name, quantity=1)
	list[item_name] = quantity
	p list
end

add_item(test_list,"potato")




# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: