require 'bank'

describe Account do

    let (:santander) {described_class.new}

    it 'will check that a bank exists' do
    end

    it ' will check that an amount can be deposite into account' do
        santander.debit(300)
        expect(santander.balance).to eq(300)
    end

    it 'will check that an amount can be credited from an account 'do
        santander.debit(300)
        santander.credit(100)
        expect(santander.balance).to eq(200)
    end
end