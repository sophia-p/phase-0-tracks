# Include todo_list.rb in this file
require_relative "todo_list.rb"

# Given the class name TodoList

describe TodoList do

  # Define an instance list of class TodoList and pass an array of strings
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  # Pass the items to the initialization method as arguments
  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  # Define an add item method that adds a given item to the list array
  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  # Define a delete item method that deletes a given item from the array
  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  # Define a get item method that takes an index and returns the array item at that index
  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end