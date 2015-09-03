#Shopping List program in Ruby

#Add method to create the list
def create_list
  print "List name, call you? "
  #remove whitespace
  name = gets.chomp
  #create hash that returns the list and items 
  hash = {"name" => name, "items" => Array.new}
  return hash
end
  
#Create method to add an item to the list
def add_list_item
  print "Called what, this item is? "
  #Remove whitespace
  item_name = gets.chomp
  
  #get quanitiy
  print "Quantity needs, have you? "
  #call .to_i on the quantity to return a number
  quantity = gets.chomp.to_i
  
  #create hash that returns item name
  #add quantity into the hash
  hash = {"name" => item_name, "quantity" => quantity}
  return hash
end

#make a method out of printing out a seperator to keep code DRY
def print_separator(character="-")
  #have this method print that character 80 times
  puts character * 80
end

def print_list(list)
  #print out list name using sting interpolation
  puts "List: #{list['name']}"
  #print out seperator
  print_separator()

#call the method each using new Ruby synatax called a block and passing in an arguement-blocks are written in curly braces or in the words do & end
  list["items"].each do |item|
    #print out item name using concat and a tab character and put quantity on the same line
    puts "\tItem: " + item['name'] + "\t\t\t" +
    #print out quantity using concat
          "Quantity: " + item['quantity'].to_s

  end
  #print out seperator
  print_separator()
end


#Ask user for their list by calling the method, create_list
list = create_list()

#add item to the list in list view by using the push method-use push BECAUSE items is an ARRAY

puts "Super awesome, you are. Some items to your list, you add."
#this takes each item in the items array and assigns it a variable
list['items'].push(add_list_item())
#add another list item
list['items'].push(add_list_item())
#add another list item
list['items'].push(add_list_item())

puts "Here's your list, Yoda:\n "

print_list(list)
  
