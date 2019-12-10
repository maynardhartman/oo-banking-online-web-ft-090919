class Transfer
    attr_accessor :sender, :receiver, :amount, :status, :balance
    
    @@balance = 0
    
    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = 50.00
      @status = "pending"
      @@balance = @@balance
      @balance = @@balance
    end
    binding.pry
    def valid?
     if @amount > @balance and @status == "pending"
        return true
      else
        return false
      end
    end
   
  end
    