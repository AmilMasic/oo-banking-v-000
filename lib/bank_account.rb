class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
    end
# <<<<<<< HEAD

    def deposit(amount)
      recent_balance = self.balance += amount
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end

    def valid?
    if self.status == "open" && self.balance > 0
      true
    else
      false
    end
  end

    def close_account
      self.status = "closed"
    end


# >>>>>>> 6ea0516dff7c91cb016af7612d88f729fca6ccc6

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
      @status = "closed"
    end

    def broken
      @balance < 1
    end
end
