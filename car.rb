require_relative 'vehicle'

class Car < Vehicle #inherits all methods and traits from the Vehicle class

  # initializes variable with a class of Car, sets year to argument passed by user, sets wheels to Fixnum 4, and speed to Float 0
  def initialize(year)
    super
    @wheels = 4
    @speed = 0.0
  end

  # prints a string which interpolates the value wheels, speed, and model year and tells the user all of those things about a particular car
  def to_s
    "Car has #{@wheels} wheels, it's current speed is #{@speed} km/h & it is a #{@year} model."
  end

  #prints the number of wheels on a car to the user
  def wheels
    @wheels
  end

  def speed?
    @speed
  end

  def honk_horn(beep)
    return beep
  end

end
