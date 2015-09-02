#Code Samples ie http://ruby-doc.org/core-2.1.2/Hash.html

#For the examples below, we'll be working with the following hash:

hash = { "item" => "Bread", "quantity" => 1, "brand" => "Wonder" }

#Print out the hash
puts "Hash: #{hash.inspect}"
#Find the number of things in the hash
print "hash.length:"
#print out the number of things in the hash
puts hash.length

#The #length method will return the number of keys in the hash. In this case, it would be 3:

hash.length

#The #invert method returns a new hash with the keys and values transposed-DOES NOT CHANGE ORIG HASH:

puts "hash.invert"

#run it
puts hash.invert
#That would produce the following new hash:
{"Bread" => "item", 1 => "quantity", "Wonder" => "brand"}

#The #shift method works similar to hashes as it does with arrays. It will remove a key and value pair from the hash and return it as an array:

print "hash.shift: "
puts hash.shift.inspect
print "hash: "
puts hash.inspect

#This would return the following (note that it is an array):

["item", "Bread"]

#The original hash would also be modified:
{"quantity" => 1, "brand" => "Wonder"}

#put the Bread back, yo

hash["item"] = "Bread"

puts "Hash merging: "
print "Original hash: "
puts hash.inspect

puts "Merged with {'calories' => 100 }"
puts hash.merge({'calories' => 100})

print "Original hash: "
puts hash.inspect

puts "Merged with {'item' => 'eggs'}"
puts hash.merge({'item' => 'eggs'})

#The #merge method combines the hash sent in as an argument and returns a new hash with the two combined:

hash.merge({"calories" => 100})

#Would return the following:

{"quantity" => 1, "brand" => "Wonder", "calories" => 100}

#If any key value pairs exist in the original hash, the merge method will overwrite those:

hash.merge({"quantity" => 100})

#Would return:

{"quantity" => 100, "brand" => "Wonder"}