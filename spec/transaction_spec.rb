require "./transaction.rb"
require "./account.rb"
require "date"

describe Transaction do
    
    let(:account) { Account.new }

    before do
        allow(DateTime).to receive(:now).and_return DateTime.new(2021,12,31)
    end

    it "should have the amount property" do
        transaction = Transaction.new(DateTime.now, 1000, 1000)
        expect(transaction.amount).to eq 1000
    end

    it "should hold the current time at creation" do
        transaction = Transaction.new(DateTime.now, 1000, 1000)
        expect(transaction.date).to eq "31/12/2021 00:00"
    end

    it "should hold the current account balance" do
        account.deposit(1000)
        expect(account.balance).to eq 1000
        account.withdraw(10)
        expect(account.balance).to eq 990
    end
    
end