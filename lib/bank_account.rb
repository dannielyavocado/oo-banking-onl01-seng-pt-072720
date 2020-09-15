class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  
  #attr_reader :status, :balance
  #attr_accessor :name
  
  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def valid?
    @status == "open" && @balance > 0 ? true : false
  end
  
  #def name=(name)
    #raise StandardError.new "Can't change name"
  #end
  
  def close_account
    @status = "closed"
  end
end
