require_relative 'car'


class Tesla < Car #Tesla inherits methods from Car and therefore Vehicle


  def accel
    @speed += 10
  end

  def brake
    @speed -= 7
  end

end
