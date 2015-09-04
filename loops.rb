#Loops

loop do
  #blocks can be do end(more than one line of code for block) or {}less than one line of code for block
  print "Do you want to know more? (y/n)"
  #get answer no whitespace, lowercase
  answer = gets.chomp.downcase
  if answer == "n"
    break
  end
end