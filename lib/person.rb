require 'pry'
class Person

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness



  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def happiness=(happy)
    @happiness = happy
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene=(clean)
    @hygiene = clean
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene

  end


  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    if @hygiene > 10
      @hygiene = 10
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    if @happiness > 10
      @happiness = 10
    end
    self.hygiene -= 3
    if @hygiene < 0
      @hygiene = 0
    end
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(other_person, topic)

    case topic
    when "politics"
      self.happiness -= 2
      other_person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      other_person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
