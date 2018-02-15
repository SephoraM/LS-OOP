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
