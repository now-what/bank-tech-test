require_relative "./transaction.rb"

class Account
    attr_reader :balance
    def initialize
        @balance = 0
    end

    def deposit(amount, date)
        @balance += amount
        deposit_trasaction = Transaction.new(amount, date)
    end

    def withdraw(amount, date)
        @balance -= amount
        withdrawal_transaction = Transaction.new(amount, date)
    end

end 