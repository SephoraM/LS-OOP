# 1. Create a superclass called Vehicle for your MyCar class to inherit from and
# move the behavior that isn't specific to the MyCar class to the superclass.
# Create a constant in your MyCar class that stores information about the
# vehicle that makes it different from other types of Vehicles.
#
# Then create a new class called MyTruck that inherits from your superclass that
# also has a constant defined that separates it from the MyCar class in some way.


# 2. Add a class variable to your superclass that can keep track of the number
# of objects created that inherit from the superclass. Create a method to print
# out the value of this class variable as well.

# 3. Create a module that you can mix in to ONE of your subclasses that
# describes a behavior unique to that subclass.

# 5. Move all of the methods from the MyCar class that also pertain to the
# MyTruck class into the Vehicle class. Make sure that all of your previous
# method calls are working when you are finished.

# 6. Write a method called age that calls a private method to calculate the age of
# the vehicle. Make sure the private method is not available from outside of the
# class. You'll need to use Ruby's built-in Time class to help.

module Haulable
  def fifth_wheel
    "Pullling a fifth wheel is possible"
  end
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@num_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    @@num_of_vehicles += 1
  end

  def self.existing_vehicles
    puts "There are/is #{@@num_of_vehicles} vehicle(s) right now."
  end

  def current_speed
    "Your current speed is #{@speed}."
  end

  def speed_up(num)
    "Your vehicle is now going #{@speed += num} miles per hour."
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

  def age
    "The #{self.model} is #{calculate_age} years old."
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

class MyTruck < Vehicle
  include Haulable

  BED = true

end

class MyCar < Vehicle
  TRUNK = true
end

car1 = MyCar.new(1999, "green", "ford taurus")

Vehicle.existing_vehicles

truck1 = MyTruck.new(2015, "white", "chevy 2500")

Vehicle.existing_vehicles

puts truck1.age

# 4. Print to the screen your method lookup for the classes that you have created.

puts Vehicle.ancestors
puts MyTruck.ancestors
puts MyCar.ancestors

# 7. Create a class 'Student' with attributes name and grade. Do NOT make the
# grade getter public, so joe.grade will raise an error. Create a
# better_grade_than? method, that you can call like so...

class Student
  def initialize(n, g)
    @grade = g
    @name = n
  end

  def better_grade_than?(other)
    true if @grade > other.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 87)

puts "Well done!" if joe.better_grade_than?(bob)

# answer for 8

# define the method before the private keyword
