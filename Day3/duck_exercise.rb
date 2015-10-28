class Car

  def initialize wheels
    @wheels = wheels
  end

  def wheels_number
    @wheels
  end

  def make_noise
    "Rumrum"
  end

end

class MotorBike

  def initialize wheels
    @wheels = wheels
  end

  def wheels_number
    @wheels
  end

  def make_noise
    "BRRRRR"
  end

end

class CountWheels
  def initialize vehicles
    @vehicles = vehicles
  end

  def total_wheels

    # Review and refactoring to use reduce
    total = 0

    @vehicles.each do |vehicle| 
      total += vehicle.wheels_number
    end

    total

  end
end

vehicles = [Car.new(3), MotorBike.new(4)]

p CountWheels.new(vehicles).total_wheels
