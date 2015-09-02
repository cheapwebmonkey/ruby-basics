#Code Samples
#Here is the hash we'll be working with:

hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }

#Keys
#To find out all of the different keys inside of the hash, we can use the keys method:

hash.keys

#This would return an array of the keys in the hash:

["item", "quantity", "brand"]

#To check whether or not a hash contains a key, we can use the has_key? method, which returns true or false. It is aliased as member? and key?:

hash.has_key?("brand")      # => true
hash.member?("quantity")    # => true
hash.key?("item")           # => true
#The store method will add a key and value pair to a hash:

hash.store("calories", 100)
#The hash would then contain the following:

{ "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company", "calories" => 100 }

#Equality
#
#Two hashes are considered equal when they have the same keys and values:

milk = { "item" => "Milk", "quantity" => 1, "brand" => "Treehouse Dairy" }

puts milk == hash     # => true

bread = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }

puts hash == bread     # => false

#Code Samples
#
#For the examples below, we'll be working with this hash:

hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }

#To return an array of the values in the hash, we can use the values method:

hash.values
#Which would return the following:
["Bread", 1, "Treehouse Bread Company"]

#The has_value? method takes one argument and returns true or false if the value is contained within the hash:

hash.has_value?("brand")

#That would return false since "brand" isn't a value. However, the following would return true:

hash.has_value?("Bread")

#The values_at method takes several arguments and returns the hash values at the specified keys as an array:

hash.values_at("quantity", "brand")

#That would return:

[1, "Treehouse Bread Company"]