require "date"

class Transaction
    attr_reader :date, :credit, :debit, :balance

    def initialize(date, credit, debit, balance)
        @credit = credit
        @debit = debit
        @date = date.strftime "%d/%m/%Y %H:%M"
        @balance = balance
    end
end