#Created BA class
class BankAccount
  attr_reader :name
  #instantiated it
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
  
  def debit(description, amount)
        add_transaction(description, -amount)
  end
  
  #create emthod for adding a transaction
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
  #method that calc balance using each loop
  def balance
    balance = 0.0
    @transactions.each do |transaction|
    balance += transaction[:amount]
  end
    return balance
  end
  #try with balance inject
  def balance_inject
    @transactions.inject(0.0) {|sum, n| sum + n }
    sum + transaction[:amount]
  end
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end
  def print_register
    puts "#{name}'s Bank Account"
    puts "Description\tAmount"
    @transactions.each do |transaction|
      puts transaction[:description] + "\t" + sprintf("%0.2f", transaction[:amount])
    end
    puts "Balance: #{sprintf("%0.2f", balance)}"
  end
end
#look at how the BA works
bank_account = BankAccount.new("Darth Vader")
bank_account.credit("Paycheck", 200)
bank_account.debit("New light saber", 140)
#use sprintf to print floating point number to 2 decimals or currency
#puts sprintf("%0.2f", bank_account.balance)
puts bank_account
puts "Register:"
bank_account.print_register