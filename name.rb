#create a class

class Name
  #* using the attr_reader or attribute reader
  attr_accessor :title, :first_name, :middle_name, :last_name
  
  #create initialize method which runs when we instantiate an instance of this class.
  def initialize(title, first_name, middle_name, last_name)
    #create an INSTANCE var which is avaialbe to every method in the class-denote an instance var with @- you set the instance vars and then call them again later-pretty common in Ruby* using the attr_reader or attribute reader
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end
 
  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end
  
  def full_name_with_title
    @title + " " + full_name()
  end
  
  end
  
#next you instantiate the class
name = Name.new("Ms", "Margeaux", "J", "Spring")
#print out the name by calling a method
puts name.full_name_with_title

vader = Name.new("Sir.", "Darth", "M", "Vader")
puts vader.full_name_with_title

#puts "Title: #{name.title}"
#name.title ="Empress"
#puts "Title: #{name.title}"
