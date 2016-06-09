class TodoList
  def initialize(todo_items)
    @list = todo_items
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete_if do |task|
      item == task
    end
  end

  def get_item(x)
    @list[x]
  end

end
