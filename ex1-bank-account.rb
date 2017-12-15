class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 0.03
  end

  # a simple reader to check an account balance
  def balance_check
    @balance
  end

  # a deposit method used to increase the balance of any account
  def deposit(amount)
    @balance += amount
  end

  # a withdrawl method to decrease the balance of any account
  def withdrawl(amount)
    @balance -= amount
  end

  #a method to apply interest to the
  def gain_interest
    @balance = @balance * (1 + @interest_rate)
  end

end

# make an object called jeff_account with a class of BankAccount
# in my class definition I initialize it with zero balance and r=3%
jeff_account = BankAccount.new

# put 100 bucks in jeff_account
jeff_account.deposit(100)

puts "Jeff has $#{jeff_account.balance_check}"

# take 100 bucks out
jeff_account.withdrawl(25)

puts "After taking out $25, Jeff has $#{jeff_account.balance_check}"

# apply some interest to the account
jeff_account.gain_interest

puts "Interest has accrued on Jeff's account, he now has $#{jeff_account.balance_check}"
