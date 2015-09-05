#While loops don't need the 'break' keyword
answer = ""
#set condiditon
while answer != "n"
  print "Do you want to run the pointless loop again? (y/n) "
#get ans from standard input, remove trailing spaces, lwrcase
answer = gets.chomp.downcase
end