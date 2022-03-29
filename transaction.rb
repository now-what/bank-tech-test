require "date"

class Transaction
    attr_reader :date, :amount, :balance

    def initialize(date, amount, balance)
        @amount = amount
        @date = date.strftime "%d/%m/%Y %H:%M"
        @balance = balance
    end
end