require_relative "./transaction.rb"

class Account
    attr_reader :balance, :transaction_list
    def initialize
        @balance = 0
        @transaction_list = []
    end

    def deposit(amount)
        @balance += amount
        deposit_transaction = Transaction.new(amount, DateTime.now)
        @transaction_list << deposit_transaction
    end

    def withdraw(amount)
        @balance -= amount
        withdrawal_transaction = Transaction.new(amount, DateTime.now)
        @transaction_list << withdrawal_transaction
    end

    def statement()

    end

end 