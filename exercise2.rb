class Cats

  attr_reader :name, :preferred_food, :meal_time
  attr_writer :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time

 def eats_at
   if @meal_time < 10
     "AM"
   else @meal_time > 10
     "PM"
   end
 end

 def meow
   puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
 end

 end
 end

 cat1 = Cats.new('one', 'tuna', 5)
 cat2 = Cats.new('two', 'salmon', 8)
 cat3 = Cats.new('three', 'kibble', 15)

puts cat1.meow
puts cat2.meow
puts cat3.meow
