def print_hello(number_of_times)
  #when writing loops it is convention to use the letter i, j, k to iterate over the loop
  #i is the ITERATOR and is currently =0
  i = 0
  while i < number_of_times
    #function will print "Hello"
    puts "Hello"
    #You have to increent the ITERATOR
    i += 1
  end
end

#Now lets call the method from above

#Create  answer 
answer = 0
until answer >= 13 do
  print "How many times do you want to print 'Hello'? Enter a number greater than 13 to exit"
  #get the answer and convert it to an integer
  answer = gets.chomp.to_i
  #and then call that method with the answer
  print_hello(answer)
end
  
#The print_hello method takes in number_of_times as a parameter. When you call print_hello with answer you're passing that in as number_of_times just as print_hello(3) would set number_of_times to 3.