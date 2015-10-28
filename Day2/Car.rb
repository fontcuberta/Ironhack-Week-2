require 'pry'

class Car

  #Para añadir un parametro por defecto
  # en el initialize el parametro debe de ser igualado
  # al parametro por defecto que deseemos
  # Example:
  #
  # def initialize noise = "Brooommmmmmmm"
  #   @noise = noise
  # end


  def initialize noise, color
    @noise = noise
    @color = color
    @cities = "file.txt"
  end

  def make_noise
    puts @noise
  end

  def self.make_noise_twice car

    2.times do 
      car.make_noise
    end

  end

  def add_city city

    if File.exist? @cities 
      cities_list = IO.read @cities
    else
      cities_list = ''
    end

      cities_list << city + ','
      IO.write @cities, cities_list

  end

  def cities
    IO.read @cities
  end

  def show_cities
    puts IO.read @cities
  end

end

class RacingCar < Car

  def initialize color
    super("BROOMM", color)
  end

end

my_car = Car.new('Agghged')
Car.make_noise_twice(my_car)

my_car.add_city 'Madrid'
my_car.add_city 'Barcelona'
my_car.add_city 'Sevilla'
my_car.add_city 'Granada'
my_car.show_cities

racing_car = RacingCar.new('Rojo')
racing_car.make_noise

#binding.pry