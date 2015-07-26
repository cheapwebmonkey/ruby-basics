print "What is your fav number, brah? "
number = gets.chomp.to_i

if (number == 13) || (number == 23)
  puts "That's my fav too, brah!"
elsif (number >10) && (number.even?)
  puts "That is a high, even number, brah."
elsif (number.odd?) && (number % 3 == 0)
  puts "That number is divisible by 3 brah, and odd."
end