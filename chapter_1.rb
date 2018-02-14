# 1. How do we create an object in Ruby?
# Give an example of the creation of an object.

# ->
# We create an object by defining a class and then instantiating it.

class Obj
end

my_obj = Obj.new

# 2. What is a module? What is its purpose? How do we use them with our classes?
# Create a module for the class you created in exercise 1 and include it properly.

# ->
# A module is a how we separate out pieces of code that we want to be available
# to multiple classes. We can then "mix in" the module by 'including' it in the
# class definition with the `include` reserved word.

module Mod
  def mod_method
  end
end

class Obj
  include Mod
end

my_obj = Obj.new
