# your code goes here

require 'pry'

# OBJECTIVES
# [ X ] First you need to create a person class that is initialized with a name that cannot be changed.
# [  ] Each instance of class Personshould be able to remember their name
# [  ]Each instance of class Person should start with $25 in their bank accounts
# [  ]Each instance of class Person should start with eight happiness points
# [  ] Each instance of class Person should start with eight hygiene points
# [  ] The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# [  ] The amount in the bank account should also be able to change, though it has no max or min.

class Person
 attr_reader :name
 attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    if @happiness >= 10
      @happiness = 10
    elsif @happiness <= 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene >= 10
      @hygiene = 10
    elsif @hygiene <= 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    # binding.pry
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(caller)
    # binding.pry
    #test two is penelope, that is self not caller
    self.happiness += 3
    #uses happiness= method and uses 0<happiness<10 method rules.
    # I am not sure why the call_friend method self is the caller and the argument is the friend?
    caller.happiness += 3
    return "Hi #{caller.name}! It's #{self.name}. How are you?"
    #but this string is backwards from above naming conventions? Would like to discuss this more...
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -=2
      return "blah blah partisan blah lobbyist"
    end

    if topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    end

    if topic != "politics" && topic != "weather"
    #   self.happiness -= 2
    #   person.happiness -=2
      return "blah blah blah blah blah"
    end

    #weather
    #other


  end




end #end of Person class
