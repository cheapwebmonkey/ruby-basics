#Shopping List program in Ruby

#Add method to create the list
def create_list
  print "What is the name of this list? "
  #remove whitespace
  name = gets.chomp
  #create hash that returns the list and items 
  hash = {"name" => name, "items" => Array.new}
  return hash
end

#Create method to add an item to the list
def add_list_item
  print "What is this item called? "
  #Remove whitespace
  item_name = gets.chomp
  
  #create hash that returns item name
  hash = {"name" => name}
  return hash
end

#Ask user for their list by calling the method, create_list
list = create_list()
puts list.inspect

puts add_list_item().inspect
  
