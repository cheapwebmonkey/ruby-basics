#add hash
character = { "name" => "Darth Vader", "location" => "The Death Star" }

#use the each aka each_pair method to iterate over a hash-takes 2 arguements-the key AND the value
character.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

character.each_key do |key|
  puts "Key: #{key}"
end

character.each_value do |value|
  puts "Value: #{value}"
end

