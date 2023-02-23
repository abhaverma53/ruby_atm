class BankAccount
  attr_reader :name, :balance, :dob

  def initialize(name)
    @name = name 
    @transactions = []
    @balance = 0.0
  end 
  def withdraw(amount)
    @balance -= amount.to_f
    puts "$%.2f successfully withdrawn.\n" % amount
  end

  def deposit(amount)
    @balance += amount.to_f
    puts "$%.2f successfully deposited.\n" % amount
  end
end


