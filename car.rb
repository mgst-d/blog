class Car
  MILES_PER_GALLON = 20

  attr_reader :fuel

  def initialize
    @fuel = 0
  end

  def add_fuel amount
    @fuel += amount
  end

  def range #дистанция
    @fuel * MILES_PER_GALLON
  end

end