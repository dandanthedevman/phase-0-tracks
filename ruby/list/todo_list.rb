class TodoList
  
	def initialize (item)
  @items = item
  end 

  def get_items 
  p @items 
  end

  def add_item(item)
  	@items << item 
  end

  def delete_item(item)
  	@items.delete_if {|x| x === item}
  end 

  def get_item(index)
  	p @items[index] 
  end
end 
list = TodoList.new(["do the dishes", "mow the lawn"])


list.get_items

list.add_item("mop")

list.delete_item("do the dishes")

list.get_item(0)