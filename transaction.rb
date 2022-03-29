require "date"

class Transaction
    attr_reader :date, :credit, :debit, :balance

    def initialize(date, credit, debit, balance)
        @credit = '%.2f' % credit.to_f
        @debit = '%.2f' % debit.to_f
        @date = date.strftime "%d/%m/%Y %H:%M"
        @balance = '%.2f' % balance.to_f
    end
end