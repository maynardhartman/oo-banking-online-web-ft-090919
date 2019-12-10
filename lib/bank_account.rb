require ('pry')
class BankAccount
        attr_accessor :name, :status, :new_name, :balance
        attr_writer :name, :amount
        attr_reader :amount
    
    @@balance = 0
    
    def initialize(name)
      @name = name
      @status = "open"
      @amount = amount
      @balance = 1000.00
      @@balance = @balance
    end
   
    def amount
      @amount
    end
    
    def name=(new_name)
      raise(NoMethodError)
    end
    
    def deposit(amount)
      @balance = (@balance + amount)
    end
    
    def display_balance
      #binding.pry
      return  "Your balance is $#{@balance}."
    end
    
    def valid?
      if @status == "open" or @status == "pending" and @balance > 0
         return true 
      else if @status == "closed" or @balance < 1
        return false
      end
      end
    end
    
    def close_account
      @balance = 0 and @status = "closed"
    end
  
end