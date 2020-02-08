class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 2000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def close_account
    self.status = "closed"
  end

  def valid?
     status == "open" && balance > 0
  end

end