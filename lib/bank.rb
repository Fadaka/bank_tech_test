class Account
    
    attr_reader :balance, :debit, :credit, :transac_time

    def initialize 
        @balance = 0
    end

    def debit(amount)
        @balance += amount
        return @balance
    end

    def credit(amount)
         @balance -= amount
        return @balance 
    end
 
    def transac_time
        t = Time.now
        date_array = (@balance).map {t}
        date_array_formatted = date_array.map {|date| date.strftime("%d-%m-%Y")}
        return date_array_formatted
    end

    def statement
        return zip()
    end

 
end