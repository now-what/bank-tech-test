require "./account.rb"

describe Account do
    it "starts with no balance" do
        account = Account.new
        expect(account.balance).to eq 0
    end
    
    # describe ".deposit" do
    #     it "allows to deposit money in the bank" do
    #         account = Account.new
    #         account.deposit(1000)
    #         expect(account.balance).to eq 1000
    #     end
    # end
end