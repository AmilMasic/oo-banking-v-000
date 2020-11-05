class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
    end

    def deposit(amount)
      recent_balance = self.balance += amount
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end

    def valid?
     balance > 0 && status == "open"
    end

    def close_account
      self.status = "closed"
    end



    def deposit(amount)
      recent_balance = @balance += amount
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end

    def valid?
        !(self.broken && self.close_account)

    end

    def close_account
    self.status = "closed"
    end

    def broken
      @balance < 1
    end
end
