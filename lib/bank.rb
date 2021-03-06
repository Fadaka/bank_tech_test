INITIALISED_BALANCE = 0
class Account
  attr_reader :balance, :debit, :credit, :transac_time, :debit_history, :credit_history, :balance_history,
              :transac_history

  def initialize
    @balance = INITIALISED_BALANCE
    @debit_history = []
    @credit_history = []
    @balance_history = []
    @transac_history = []
  end

  def debit(amount)
    @balance += amount
    @debit_history.push(amount)
    @credit_history.push(' ')
    @balance_history.push(@balance)
    transac_time
    @balance
  end

  def credit(amount)
    raise 'insufficient balance in account' if amount > @balance

    @balance -= amount
    @credit_history.push(amount)
    @debit_history.push(' ')
    @balance_history.push(@balance)
    transac_time
    @balance
  end

  def transac_time
    t = Time.now
    date_array = @balance_history.map { t }
    date_array_formatted = date_array.map { |date| date.strftime('%d-%m-%Y') }
    transac_history.push(date_array_formatted[-1])
  end

  def statement
    statment_array = [@transac_history, @credit_history, @debit_history, @balance_history]
    bank_statement = statment_array.transpose
    print('[DATE, CREDIT, DEBIT, BALANCE]')
    bank_statement
  end
end
