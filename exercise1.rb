class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

def deposit(amount)
  @balance +=  amount
  puts "#{@balance}"
end

def withdraw(amount)
  @balance -= amount
  puts "#{@balance}"
end

def gain_interest(amount)
  @balance = amount + interest_rate
  puts "#{@balance}"
end

end


savings = BankAccount.new(100, 0.05)
checkings = BankAccount.new(100, 1)


savings.deposit(10)
checkings.withdraw (100)
