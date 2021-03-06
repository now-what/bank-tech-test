require "./account.rb"

describe Account do
    
    let(:account) { Account.new }

    before do
        allow(Date).to receive(:today).and_return Date.new(2021,12,31)
    end
    
    it "starts with no balance" do
        expect(account.balance).to eq 0
    end

    it "starts with an empty transaction list" do
        expect(account.transaction_list).to eq []
    end
    
    describe ".deposit" do
        it "allows to deposit money in the bank" do
            account.deposit(1000)
            expect(account.balance).to eq 1000
        end

        it "should add the transaction to the transaction list" do
            account.deposit(10)
            expect(account.transaction_list).not_to eq []
        end
    end

    describe ".withdraw" do
        it "allows to withdraw money from the bank" do
            account.deposit(3000)
            account.withdraw(500)
            expect(account.balance).to eq 2500
        end

        it "should add the transaction to the transaction list" do
            account.deposit(800)
            account.withdraw(500)
            expect(account.transaction_list).not_to eq []
            expect(account.transaction_list.length).to eq 2
        end
    end

    describe ".statement" do
        it "should take the transaction list and print it nicely" do
            account.deposit(1000)
            account.deposit(2000)
            account.withdraw(500)
            expect {print(account.statement)}.to output("date || credit || debit || balance\n31/12/2021 || || 500.00 || 2500.00\n31/12/2021 || 2000.00 || || 3000.00\n31/12/2021 || 1000.00 || || 1000.00").to_stdout 
        end
    end
end