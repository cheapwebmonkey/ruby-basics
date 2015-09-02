def get_name()
  print "Enter your name, brah: "
  return gets.chomp
end

def greet(name)
  puts "Hi #{name}!"
  if (name == "Margeaux")
    puts "That name is awesome!"
  end
  def get_number()
    print "What number would you like to test, brah? "
    return gets.chomp.to_i
 end
end

  def  divisible_by_3?(number)
    return (number % 3 == 0)
  end

name = get_name()
greet(name)
number = get_number()
  
  if divisible_by_3?(number)
    puts "That number is divisible by three. brah."
  end

