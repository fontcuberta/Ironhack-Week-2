require 'pry'

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize (name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Gonzalo's place", "Málaga", 2, 49),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

#Iteration 1

def list_homes

  homes.each do |home| 

    puts "#{home.name} in #{home.city}\nPrice: $#{home.price} a night",""

  end

end

# Iteration 2

# Hacer una función para agrupar las mismas.
# No se puede ahora mismo hacer eso.

def sort_by_price array
  array.sort do |home1, home2| 
    home1.price <=> home2.price
  end
end

def sort_by_capacity array
  array.sort do |home1, home2| 
    home1.capacity <=> home2.capacity
  end
end

# Iteration 3

def filter_by_city array, city_name
  array.select do |home|
    home.city.downcase == city_name.downcase
  end
end

cities_filtered = filter_by_city homes, 'san juan'


# Iteration 4

def average_cities_filtered array

  total = array.reduce(0.0) do |total,item|
    total + item.price
  end

  total / array.length

end

# Iteration 5

def find_by_price array, price
  array.find do |item|
    item.price == price
  end
end

# Iteration 5.1

# Get more results with find method

def find_all_by_price array, price
  array.find_all do |item|
    item.price == price
  end
end

# Iteration 5.2

def filter_by_city array, city_name
  array.select do |home|
    home.city.downcase == city_name.downcase
  end
end

puts list_homes(filter_by_city(homes, 'san juan'))

binding.pry