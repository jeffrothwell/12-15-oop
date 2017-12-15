class Cat
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      "#{@meal_time} AM"
    elsif @meal_time == 12
      "#{@meal_time} noon"
    else
      "#{@meal_time - 12} PM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

# make some new cats, the third argument is the hour, in 24-hour time
# that the cat preferrs to eat at
pip = Cat.new("Pip", "Whiskas", 7)
theo = Cat.new("Theo", "Facy Feast", 12)
mr_meowgie = Cat.new("Mr. Meowgie", "Iams", 15)

puts theo.eats_at

puts pip.meow
puts theo.meow
