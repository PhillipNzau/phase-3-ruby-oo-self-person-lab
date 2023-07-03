# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness.to_i
        @hygiene = hygiene.to_i
    end

    def name
        @name
    end

    def bank_account
        @bank_account 
    end

    def checker(str,val)
        if ((val >= 0) && (val <= 10)) 
            val
        else
        p "Allowed #{str} values are between 0 and 10"
        end
    end

    def happiness
       self.checker("happiness",@happiness)
              
    end

    def hygiene
       self.checker("hygiene", @hygiene)
    end

    def stateChecker(val)
        val > 7
    end

    def clean?
       self.stateChecker(@hygiene)
    end

    def happy?
        self.stateChecker(@happiness)
    end

    def get_paid(amount)
       @bank_account +=amount
        p "All about the benjamins"
    end

    def take_bath
        @hygiene += 4
        @hygiene = 10 if @hygiene > 10
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @happiness = 10 if @happiness > 10
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.increment_happiness_points(3)
        friend.increment_happiness_points(3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def increment_happiness_points(points)
        self.happiness += points
        self.happiness = 10 if self.happiness > 10
        self.happiness = 0 if self.happiness < 0
      end

end
p1 = Person.new('john')
p2 = Person.new('Stella')
p1.call_friend(p2)
pp p2.happiness
