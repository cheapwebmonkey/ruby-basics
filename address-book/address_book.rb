require "./contact"

class AddressBook
  attr_reader :contacts
  
  def initialize
    @contacts = []
end
  #menu 
  def run
    loop do
      puts "Address Book"
      puts "a: Add Contact"
      puts "p: Print Address Book"
      puts "s: Search"
      puts "e: Exit"
      print "Enter your choice: "
      input = gets.chomp.downcase
      case input
        when 'a'
          add_contact
        when 'p'
          print_contact_list
        when 's'
          print "Search term: "
          search = gets.chomp
          find_by_name(search)
          find_by_phone_number(search)
          find_by_address(search)
        when 'e'
        break  
      end
    end
  end
  
  def add_contact
    contact = Contact.new
    print "First name: "
    contact.first_name = gets.chomp
    print "Middle name: "
    contact.middle_name = gets.chomp
    print "Last name: "
    contact.last_name = gets.chomp
    loop do
      puts "Add phone number or address?"
      puts "p: Add phone number"
      puts "a: Add address"
      puts "(Any other key to go back)"
      response = gets.chomp.downcase
      case response
        when 'p'
        phone = PhoneNumber.new
        print "Phone number type: (Home, Work, Mobile)"
        phone.type = gets.chomp
        print "Number: "
        phone.number = gets.chomp
        contact.phone_numbers.push(phone)
        when 'a'
        address = Address.new
        print "Address type: (Home, Work, etc)"
        address.type = gets.chomp
        print "Address line 1: "
        address.street_1 = gets.chomp
        print "Address line 2: "
        address.street_2 = gets.chomp
        print "City: "
        address.city = gets.chomp
        print "State: "
        address.state = gets.chomp
        print "Zip Code: "
        address.zipcode = gets.chomp
        contact.addresses.push(address)
      else
        print "\n"
        break
      end
      
    end
    contacts.push(contact)
  end
  
  def print_results(search, results)
    puts search
    #now iterate over the result
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
  end
  #add search ability - add a method for this
  def find_by_name(name)
    #iterate over each contact in the contact list and if the name matches the arguemnt to this method we will return that contact
    #start w/empty array of search results which = the contacts in our contact list
    results = []
    #make em all lowercase
    search = name.downcase
    #iterate thru contact if they match append them to the results []
    #add that loop yo
    contacts.each do |contact|
      #then if the first name (downcase that shite) matches our search...
      if contact.full_name.downcase.include?(search)
        #append our results
        results.push(contact)
      end
    end
    #now print out the results NOT resluts bitches
    print_results("Name search results (#{search})", results)
    #now iterate over the result
#    results.each do |contact|
#      puts contact.to_s('full_name')
#      contact.print_phone_numbers
#      contact.print_addresses
#      puts "\n"
#    end
  end
  
  def find_by_phone_number(number)
    results = []
    search = number.gsub("-", "")
    contacts.each do |contact|
      contact.phone_numbers.each do |phone_number|
        if phone_number.number.gsub("-", "").include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Phone search results (#{search})", results)
#    #now iterate over the result
#    results.each do |contact|
#      puts contact.to_s('full_name')
#      contact.print_phone_numbers
#      contact.print_addresses
#      puts "\n"
    end
#  end
  def find_by_address(query)
    results = []
    search = query.downcase
    contacts.each do |contact|
      contact.addresses.each do |address|
        if address.to_s('long').downcase.include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Address search results (#{search})", results)
  end
  
  def print_contact_list
    puts "Contacts"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end
  
  
  
  
  
  
address_book = AddressBook.new
address_book.run

#add new contact info
#margeaux =Contact.new
#margeaux.first_name = "Margeaux"
#margeaux.last_name = "Spring"
##margeaux.middle_name = "Jean"
#margeaux.add_phone_number("Mobile", "502-555-5544")
#margeaux.add_address("Home:", "111 Yolo Drive", "", "Louisville", "KY", "40202")
###add contact to the list
##address_book.contacts.push(margeaux)
#
##address_book.print_contact_list
#address_book.contacts.push(margeaux)
##address_book.find_by_name("e")
#address_book.find_by_phone_number("222")
#address_book.find_by_address("yolo")