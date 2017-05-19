class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    @experience / 2 + 50
  end

  def deliver(start_address, end_address)
    todays_earnings = 0
    houses_total = end_address - start_address + 1
    if houses_total <= quota
      todays_earnings = 0.25 * houses_total - 2
    elsif houses_total >= quota
      todays_earnings = 0.25 * quota + 0.50  * (houses_total - quota)
    end
    @experience += houses_total
    @earnings += todays_earnings
    return  todays_earnings
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
  end
end

  paperboy1 = Paperboy.new('one', 0, 0)
  paperboy2 = Paperboy.new('two', 0, 0)
  paperboy3 = Paperboy.new('three', 0, 0)

puts paperboy1.deliver(101, 160)



# tommy = Paperboy.new("Tommy")
#
# tommy.quota # => 50
# tommy.deliver(101, 160) # => 17.5
# tommy.earnings #=> 17.5
# tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"
#
# tommy.quota # => 80
# tommy.deliver(1, 75) # => 16.75
# tommy.earnings #=> 34.25
# tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
