class TodoList

  def initialize(array) 
    @array = array
  end 

  def get_items
    @array
  end 

  def add_item(str)
    @array.push(str)
  end

  def delete_item(str)
    @array.delete(str)
    @array
  end

  def get_item(i)
    @array[i]
  end 

end

list = TodoList.new(["do the dishes", "mow the lawn"])
p list.get_items
p list.add_item("mop")
p list.delete_item("do the dishes")
p list.get_item(0)