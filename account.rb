require_relative "./transaction.rb"

class Account
    attr_reader :balance, :transaction_list

    def initialize
        @balance = 0
        @transaction_list = []
    end

    def deposit(amount)
        @balance += amount
        deposit_transaction = Transaction.new(DateTime.now, amount, @balance)
        @transaction_list << deposit_transaction
    end

    def withdraw(amount)
        @balance -= amount
        withdrawal_transaction = Transaction.new(DateTime.now, amount, @balance)
        @transaction_list << withdrawal_transaction
    end

    def statement
        
        # @transaction_list
        @transaction_list[0].date
        @transaction_list[0].amount
    end

end 