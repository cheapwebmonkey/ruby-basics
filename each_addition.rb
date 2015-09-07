array = [0, 1, 2, 3, 4, 5]
array.each do |item|
  #anything we do to the item inside the block does not change the original array, it only applies to the var innside the block
  item = item + 2
  puts "The current item + 2 is #{item}."
end
puts array.inspect