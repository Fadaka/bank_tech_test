
require 'bank'

describe Account do
  let(:santander) { described_class.new }

  it ' will check that an amount can be deposite into account' do
    santander.debit(300)
    expect(santander.balance).to eq(300)
  end

  it 'will check that an amount can be credited from an account ' do
    santander.debit(300)
    santander.credit(100)
    expect(santander.balance).to eq(200)
  end
  it 'will raise an error ,if money is credited more than balance' do
    santander.debit(10)
    expect { santander.credit(100) }.to raise_error('insufficient balance in account')
  end

  it 'will check that the debit has been recorded' do
    santander.debit(10)
    expect(santander.debit_history).to match_array([10])
  end

  it 'will check that the credit and debit has been recorded' do
    santander.debit(100)
    santander.credit(100)
    expect(santander.credit_history).to match_array([' ', 100])
  end

  it 'will check that the balance has been recorded' do
    santander.debit(100)
    santander.credit(30)
    expect(santander.balance_history).to match_array([100, 70])
  end

  it 'will check that the transaction time has been recorded' do
    t = Time.now
    santander.debit(100)
    expect(santander.statement[0][0]).to eq(t.strftime('%d-%m-%Y'))
  end

  it 'will return a complete bank statement of transaction history' do
    t = Time.now
    time_now = t.strftime('%d-%m-%Y')
    santander.debit(100)
    expect(santander.statement).to include([time_now, ' ', 100, 100])
  end
end
