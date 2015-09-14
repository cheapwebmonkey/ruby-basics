class Address
  attr_accessor :type, :street_1, :street_2, :city, :state, :zipcode
  
  #set a defualt address format
  def to_s(format = 'short')
    #create string to hold address which we will implicitly return
    address = ''
    
    #if you leave off the CASE FORMAT your will get a syntax error, unexpected keyword_when, expecting keyword_end when 'short'

    case format
      #ask why we had to put the long case above the short?
    when 'long'
      address += street_1 + "\n"
      address += street_2 + "\n" if !street_2.nil?
      address += "#{city}, #{state} #{zipcode}"
    when 'short'
      address += "#{type}: "
      address += street_1
      if street_2
        address += " " + street_2
      end
      address += ", #{city}, #{state}, #{zipcode}"
    end
    address
  end
end

home = Address.new
home.type = "Home"
home.street_1 = "111 Yolo Drive"
home.city = "Louisville"
home.state = "KY"
home.zipcode = "40202"

puts home.to_s('short')
puts "\n"
puts home.to_s('long')