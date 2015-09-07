answer = 0
until answer >= 13 do
  print "How many times do you want to print 'Hello'? Enter a number greater than 13 to exit"
  #get the answer and convert it to an integer
  answer = gets.chomp.to_i
  #and then call that method with the answer
  print_hello(answer)
end