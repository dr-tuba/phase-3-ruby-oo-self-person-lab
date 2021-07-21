require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @name = name
    end

    def name
        @name
    end
end

chelsea = Person.new("Chelsea Santos")
steve = Person.new("Steve Vaughn")

# gets the person's name
puts chelsea.name

# gets the amount in a person's bank account
puts steve.bank_account

# sets the value of the bank account to a new amount.
puts chelsea.bank_account = 1500000

# gets the value of the person's happiness points.
puts steve.happiness

# sets the value of the person's happiness points. The maximum value allowed is 10, and the minimum value allowed is 0.
puts chelsea.happiness = 15

# gets the value of the person's hygiene points.
puts steve.hygiene

# sets the value of the person's hygiene points. The maximum value allowed is 10, and the minimum value allowed is 0.
puts steve.hygiene = 2