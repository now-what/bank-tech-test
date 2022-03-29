require_relative "./transaction.rb"

class Account
    attr_reader :balance
    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance += amount
        deposit_trasaction = Transaction.new(amount, DateTime.now)
    end

    def withdraw(amount)
        @balance -= amount
        withdrawal_transaction = Transaction.new(amount, DateTime.now)
    end

end 