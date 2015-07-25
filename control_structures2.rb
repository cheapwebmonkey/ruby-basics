print "Enter name: "
name = gets.chomp

if name == "Margeaux"
  puts "That's my name, as well."
else 
  puts "Nice to meet you, #{name}."
  
end

print "Modify your name. Type 'uppercase' or 'reverse:' "
answer = gets.chomp.downcase

case answer
  when "reverse"
  puts "This is your name backwards:"
  puts name.reverse
  
  when "uppercase"
  puts "Uppercase it is"
  puts name.upcase
  when "both"
  puts name.reverse.upcase
else
  puts "Ok, so rude."
end