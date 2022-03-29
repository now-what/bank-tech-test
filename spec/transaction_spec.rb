require "./transaction.rb"
require "./account.rb"
require "date"

describe Transaction do
    before do
        allow(DateTime).to receive(:now).and_return DateTime.new(2021,12,31)
        p DateTime.now
    end

    it "should have the amount property" do
        transaction = Transaction.new(1000, DateTime.now)
        expect(transaction.amount).to eq 1000
    end

    it "should hold the current time at creation" do
        transaction = Transaction.new(1000, DateTime.now)
        expect(transaction.date).to eq "31/12/2021 00:00"
    end
    
end