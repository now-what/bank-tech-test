require_relative "./transaction.rb"

class Account
    attr_reader :balance, :transaction_list
    def initialize
        @balance = 0
        @transaction_list = []
    end

    def deposit(amount)
        @balance += amount
        deposit_trasaction = Transaction.new(amount, DateTime.now)
    end

    def withdraw(amount)
        @balance -= amount
        withdrawal_transaction = Transaction.new(amount, DateTime.now)
    end

    def statement()

    end

end 