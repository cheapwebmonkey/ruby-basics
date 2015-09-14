require "./phone_number"
require "./address"
#Define the contact class for the Address Book
class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses
  
  #initalize phone number in the contact class and make it an empty array, also the addresses
  def initialize
    @phone_numbers = []
    @addresses = []
  end

  #create a method with 2 arguements to add a phone number to the contact info
  def add_phone_number(type, number)
    phone_number = PhoneNumber.new
    phone_number.type = type
    phone_number.number = number
    #once we have that we need to append it to the internal @phone_numbers array with:
    phone_numbers.push(phone_number)
  end
  
  #add addresses method- very similar to phone_numbers method
  def add_address(type, street_1, street_2, city, state, zipcode)
    #Initialize a new instance of the Address class (why)
    address = Address.new
    #then set all of the ATTRIBUTES to the ARGUEMENTS of this METHOD
    address.type = type
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.zipcode =zipcode
    #then append this to the internal array of addresses-since addresses is a attr_reader we do not have to use the @ sign
    addresses.push(address)
  end
  
  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end
  #display first and last name
  def first_last
    first_name + " " + last_name
  end
  #Display last name first
  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      #take just first letter of middle name
      last_first += middle_name.slice(0,1)
      last_first += ". "
    end
    last_first
  end
  #Display full name
  def full_name
#   OR full_name = first_name + " " + last_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end
  #override the TO STRING method so we can call that
  def to_s(format = 'full_name')
    #use CASE statement to find the format
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
  #create method to print out phone numbers
  def print_phone_numbers
    #    puts "Phone Numbers: "- i thought this was ugly so I commented it out
    #use each because of array and each takes a block with one arguement
    phone_numbers.each { |phone_numbers| puts phone_numbers}
  end
  def print_addresses
    addresses.each { |address| puts addresses.to_s('short')}
  end
end

#margeaux =Contact.new
#margeaux.first_name = "Margeaux"
#margeaux.last_name = "Spring"
#margeaux.middle_name = "Jean"
#puts margeaux.full_name
#margeaux.add_phone_number("Mobile", "502-555-5544")
##puts margeaux.phone_numbers
#margeaux.print_phone_numbers
#margeaux.print_addresses
##you have to have the same number of arguements here as for above, hence the empty "" for street_2
#margeaux.add_phone_number("Mobile", "502-555-5544")
#margeaux.add_address("Home:", "111 Yolo Drive", "", "Louisville", "KY", "40202")
#puts margeaux.last_first
#puts margeaux.to_s
#puts margeaux.first_last
#puts margeaux.to_s('first')
#puts margeaux.to_s('last')
