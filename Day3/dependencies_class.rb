require 'pry'

class Car

  def initialize noise, engine
    @noise = noise
    @engine = engine
  end

  def noise
    @engine.noise + @noise
  end

end

class Engine
  def initialize noise
    @noise = noise
  end

  def noise
    @noise
  end

end


class ElectricEngine < Engine
  def initialize noise, cv
    super(noise)
    @cv = cv
  end

end

c = Car.new( 'Pumpum', ElectricEngine.new('Room44', 23) )

binding.pry