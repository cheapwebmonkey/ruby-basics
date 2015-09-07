#The each method is commonly used to iterate over items in an array
array = [0, 1, 2, 3, 4, 5]
#use each method block using do and end keywords sending items into block individually using Ruby syntax of |some item|
array.each do |item|
  puts "The current array item is: #{item}"
end

#array = [0, 1, 2, 3, 4, 5]
#i =0
#while i < array.length do
#  puts "The current item is #{item}."
#  i += 1
#end