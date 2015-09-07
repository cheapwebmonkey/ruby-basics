#a Ruby for loop is more like an iterator
#Most Ruby programmers don't use the for loop very often, instead preferring to use an "each" loop and do iteration. The reason for this is that the variables used to iterate in the for loop exist outside the for loop, while in other iterators, they exist only inside the block of code that’s running.
#in 1..10 in a RANGE
for item in 1..10 do
  puts "The current item is #{item}" 
end

#for loops can be used for arrays as well
for item in ["Darth", "Vader", "is", "awesome!"]
    puts "The current item is #{item}" 

  
end