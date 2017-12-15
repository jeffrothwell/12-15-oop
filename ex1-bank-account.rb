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
end

jeff_account = BankAccount.new

jeff_account.deposit(100)

puts "Jeff has $#{jeff_account.balance_check}"

jeff_account.withdrawl(25)

puts "After taking out $25, Jeff has $#{jeff_account.balance_check}"
