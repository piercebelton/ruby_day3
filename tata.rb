require_relative 'car'

class Tata < Car #Tata inherits methods from Car and therefore Vehicle


  def accel
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end

end
