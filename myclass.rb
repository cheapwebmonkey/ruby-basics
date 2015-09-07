#RUBY CLASSES: You can think of a class as a blueprint. The blueprint tells Ruby how a class should be structured and what it should do.
#
#For example, a blueprint of a car would show how a car can be made. What it doesn't do is get into the specific details about an individual car, like the color.
#
#Using the variable name set to the string "Margeaux" we have a string class- the name var is the instanace and we call creating an instance of a class INSTANTIATION
#The name is the specific version of the abstract idea of a string.
#
#
#Once an instance of a class is created we call that instance an object.
#
#Classes are referred to and created in Ruby by using a capital letter, and the name of the class. For example, to refer to the string class, we use a capital S, and write out the rest of the word.
#
#Objects are instantiated by using the class name, then a dot, then the word new.

class MyClass
  def initialize
    puts "This is the initialize method"
  end
end

MyClass.new
