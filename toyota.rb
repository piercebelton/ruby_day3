require_relative 'car'

class Toyota < Car #Toyota inherits methods from Car and therefore Vehicle

  def accel
    @speed += 7
  end

  def brake
    @speed -= 5
  end

end
