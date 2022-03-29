require_relative "./transaction.rb"

class Account
    attr_reader :balance, :transaction_list

    def initialize
        @balance = 0
        @transaction_list = []
    end

    def deposit(amount)
        @balance += amount
        deposit_transaction = Transaction.new(DateTime.now, credit = amount, debit = nil, @balance)
        @transaction_list << deposit_transaction
    end

    def withdraw(amount)
        @balance -= amount
        withdrawal_transaction = Transaction.new(DateTime.now, credit = nil, debit = amount, @balance)
        @transaction_list << withdrawal_transaction
    end

    def statement
        header = "date || credit || debit || balance" + "\n"
        chronological_list = @transaction_list.reverse
        rows = chronological_list.map do
            |x| x.date + " || " + x.credit.to_s + " || " + x.debit.to_s + " || " + x.balance.to_s
            end 
        header + rows.join("\n")
    end

end 