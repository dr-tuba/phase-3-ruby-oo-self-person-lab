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

    def clean?
        if @hygiene >7 
            true
        else 
            false
        end
    end

    def happy?
        if @happiness >7 
            true
        else 
            false
        end
    end

    def get_paid(amount)
        self.bank_account=self.bank_account + amount
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

#returns true if the person's hygiene is more than seven; otherwise, it returns false.
puts steve.clean?

#returns true if the person's happiness is more than seven; otherwise, it returns false.
puts chelsea.happy?

#accepts a salary amount and adds this to the person's bank account. The method should return the string "all about the benjamins".
chelsea.get_paid(327403280483)

#increments the person's hygiene points by four and returns the string "♪ Rub-a-dub just relaxing in the tub ♫".
puts steve.take_bath

# increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫".
puts chelsea.work_out

#accepts another instance of the Person class, or "friend". The method should increment the person and the friend's happiness points by three. It should also return a string. For example, if Stella calls her friend Felix, the method increment both Stella and Felix's happiness points and then return "Hi Felix! It's Stella. How are you?"
steve.call_friend(chelsea)

# accept two arguments, the friend to start a conversation with and the topic of conversation.
chelsea.start_conversation(steve, "food")
binding.pry