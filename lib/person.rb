require 'pry'

class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @name = name
    end

    def name
        @name
    end 

    def clean?
        if @hygiene > 7 
            true
        else 
            false
        end
    end

    def happy?
        if @happiness > 7 
            true
        else 
            false
        end
    end

    def happiness=(value)
        if (0...11).cover?(value)
            @happiness = value
        elsif value > 10 
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        if (0...11).cover?(value)
            @hygiene = value
        elsif value > 10 
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        end
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = friend.happiness + 3
        self.happiness = self.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness = friend.happiness - 1
            self.happiness = self.happiness - 1
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness = friend.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

chelsea = Person.new("Chelsea Santos")
steve = Person.new("Steve Vaughn")

chelsea.happiness = 20
