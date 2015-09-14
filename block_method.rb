def block_method
  puts "Hey Yoda!"
  #yeild calls the method out of the second block
  yield
  puts "Has anyone seen Luke? He is always doing fuck-all."
end

block_method do
  puts "Chewie ate my sandwich!"
end