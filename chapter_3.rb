# 1. Add a class method to your MyCar class that calculates the gas mileage of
# any car.

class MyCar
  def self.gas_mileage(litres, miles)
    puts "#{miles / litres} miles per litre of gas."
  end

# 2. Override the to_s method to create a user friendly print out of your object.
  def to_s
    "This is my car"
  end
end

my_car = MyCar.new

puts my_car

MyCar.gas_mileage(13, 351)

# 3. When running the following code, we get an error. Fix it.

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob.name # I could use attr_writer but I want to 'get' the name here
