

#create method called ask-We're going to be asking the user for input quite a bit so the ask method will repeat the logic for us. The ask method takes two arguments and defaults to having the kind of answer be a string. This will let us return numeric values if we want.
def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end
#Finally, we test the ask method:
#answer = ask("What is your name?")
#puts answer

#Create a method that creats a contact which is a hash and then returns that hash
def add_contact
  contact = {"name" => "", "phone_numbers" => []}
  #Get the contact name
  contact ["name"] = ask("What is the person's name?")
  answer = ""
  while answer != "n"
    answer = ask("Do you want to add a phone number? (y/n)")
    if answer == "y"
      #ask for the phone number
      phone = ask("Enter a phone number:")
      #push that answer into the contact phone numbers array
      contact["phone_numbers"].push(phone)
    end
  end
  return contact
end
#Set list up as an empty array
contact_list = []
#Now loop thru and ask people to enter contacts
answer = ""
while answer != "n"
  #add to our contact list the RESULT of the add contact method
  contact_list.push(add_contact())
  ask("Do you want to add a new contact? (y/n)")
  answer = ask("Do you want to add another? (y/n)")
end
#print out the contact list using iteration
puts "---"
#use each method to iterate over the contact list array
contact_list.each do |contact|
#The contact_list variable is an array. We iterate over each contact using the each method. The array items are passed in to each iteration of the block as a contact variable.
#Each item in the array is a hash. First, we print out the contact's name by accessing the value at the name key.


  puts "Name: #{contact["name"]}"
#phone umbers will be array so use each method
  if contact["phone_numbers"].size > 0
#It is possible to enter a contact without a phone number. The phone_numbers key is a string which is an array. We check whether or not a contact has any phone numbers by checking whether or not the length of the phone_numbers array is greater than 0.
    #Next, we iterate over each phone number and print it out. This only occurs if there are items in the array.
  contact["phone_numbers"].each do |phone_number|
      puts "Phone: #{phone_number}"
    end


#then we close out or loops
  end
  puts "-----\n"
end






