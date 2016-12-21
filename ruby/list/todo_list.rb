class TodoList 
  
  def initialize(todolist)
    @todolist = todolist
  end 

  def get_items 
    @todolist 
  end 


  def add_item(item)
    @todolist.push(item)
  end 

  def delete_item(item)
    @todolist.delete(item)
  end 

  def get_item(index)
    @todolist[index]
  end 

end 

list = TodoList.new(["do the dishes", "mow the lawn"])
p list.get_items

list = TodoList.new(["do the dishes", "mow the lawn"])
list.add_item("mop")
p list.get_items

list = TodoList.new(["do the dishes", "mow the lawn"])
list.delete_item("do the dishes")
p list.get_items

list = TodoList.new(["do the dishes", "mow the lawn"])
p list.get_item(0)