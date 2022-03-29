require "./account.rb"

describe Account do
    it "starts with no balance" do
        account = Account.new
        expect(account.balance).to eq 0
    end
    
    describe ".deposit" do
        it "allows to deposit money in the bank" do
            account = Account.new
            date = "21/12/2021"
            account.deposit(1000, date)
            expect(account.balance).to eq 1000
        end
    end

    describe ".withdraw" do
        it "allows to withdraw money from the bank" do
            account = Account.new
            date = "23/12/2021"
            account.deposit(3000, date)
            account.withdraw(500, date)
            expect(account.balance).to eq 2500
        end
    end
end