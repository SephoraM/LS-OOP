# 1. Create a class called MyCar. When you initialize a new instance or object
# of the class, allow the user to define some instance variables that tell us
# the year, color, and model of the car. Create an instance variable that is set
# to 0 during instantiation of the object to track the current speed of the car
# as well. Create instance methods that allow the car to speed up, brake, and
# shut the car off.

# 2.Add an accessor method to your MyCar class to change and view the color of
# your car. Then add an accessor method that allows you to view, but not modify,
# the year of your car.



class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def current_speed
    "Your current speed is #{@speed}."
  end

  def speed_up(num)
    "Your car is now going #{@speed += num} miles per hour."
  end

  def apply_brakes(num)
    "You've slowed to #{@speed - num > 0 ? @speed -= num : 0} miles per hour."
  end

  def shut_off
    @speed = 0
    "You've turned off the engine."
  end

  def spray_paint(c)
    self.color = c
  end
end

my_car = MyCar.new(2002, "silver", "echo")

puts my_car.speed_up(60)
puts my_car.current_speed
puts my_car.apply_brakes(30)
puts my_car.shut_off
puts my_car.current_speed
puts my_car.color
my_car.color = "red"
puts my_car.color
puts my_car.year
my_car.spray_paint("green")
puts my_car.color
