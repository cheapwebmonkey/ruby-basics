#Gem Money
require "money"

#initlize a new money instance
money = Money.new(1000, "USD")
puts money.inspect
more_money =Money.new(1000, "USD")

#add them together
all_the_money = money + more_money
puts all_the_money.inspect

