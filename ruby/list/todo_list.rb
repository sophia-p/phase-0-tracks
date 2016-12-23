class TodoList

  def initialize(array)
    @list_items = array
  end

  def add_item(item)
    @list_items.push(item)
  end

  def delete_item(item)
    @list_items.delete(item)
  end

  def get_item(index)
    @list_items[index]
  end

  def get_items
    @list_items
  end

end