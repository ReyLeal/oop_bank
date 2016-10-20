class BankAccount

@@minimum_balance = 200

  attr_accessor :balance
  def initialize(balance, name)
    if balance >= @@minimum_balance
      @balance = balance
    else
      raise ArgumentError
    end
  end
  def deposit(deposit)
    @balance = @balance + deposit
  end
  def withdraw(withdraw)
    @balance = @balance - withdraw
  end
  def transfer(amount, account)
    self.withdraw(amount)
    account.deposit(amount)
  end
  def self.minimum_balance=(minimum)
    @@minimum_balance = minimum
  end
end
