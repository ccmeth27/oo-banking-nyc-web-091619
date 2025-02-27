#require 'pry'

class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        "Your balance is $#{@balance}."
        # shows balance for each instance
    end

    def valid?
        (@balance > 0 && @status == "open")
    end

    def close_account
        @status = "closed"
    end


end #end of BankAccount


