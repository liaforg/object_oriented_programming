class Cats

  attr_reader :name, :preferred_food, :meal_time
  attr_writer :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time

  cat1 = Cats.new('one', 'tuna', '5')
  cat2 = Cats.new('two', 'salmon', '8')
  cat3 = Cats.new('three', 'kibble', '15')

 def eats_at
   if @meal_time <= 10
     "AM"
   else @meal_time >= 10
     "PM"
 end

 def meow
   puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
 end

meow.cat1
meow.cat2
meow.cat3


end
