require "./transaction.rb"
require "./account.rb"

describe Transaction do
    it "should have the amount property" do
        transaction = Transaction.new(1000, "21/12/2022")
        expect(transaction.amount).to eq 1000
    end
    
end