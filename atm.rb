require './bank_account.rb'
require './users.rb'

cmd = ""
print "full name is : "
name = gets.chomp()
id = Random.rand(10)
account = BankAccount.new(name)

puts "Welcome to #{account.name}'s ATM" 
puts "your id is #{id}"
while cmd != "e" do
  puts "Would you like to (w)ithdraw, (d)eposit or (c)heck your balance?"
  puts "You can also (e)nd your session."
  cmd = gets.chomp

  case cmd
  when "w"
    puts "How much would you like to withdraw?"
    amount = gets.chomp
    account.withdraw(amount)
  when "d"
    puts "How much would you like to deposit?"
    amount = gets.chomp 
    account.deposit(amount)
  when "c"
    puts "Your balance is $%.2f\n" % account.balance
  else
    puts "Didn't understand your command. Try again." unless cmd == "e"
  end
end 