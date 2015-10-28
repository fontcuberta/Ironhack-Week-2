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
  Home.new("Ariel's place", "San Juan", 4, 32)
]

def list_homes array

  array.each do |home| 

    puts "#{home.name} in #{home.city}\nPrice: $#{home.price} a night",""

  end

end

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

def filter_by_city array, city_name

  array.select do |home|
    home.city.downcase == city_name.downcase
  end
end

def average_cities_filtered array

  total = array.reduce(0.0) do |total,item|
    total + item.price
  end

  total / array.length

end

def find_all_by_price array, price

  array.find_all do |item|
    item.price == price
  end
end

def find_by_range array, price
  array.select do |home|
    home.price < price
  end
end



# option = ''
# puts "Introduce tu nombre:"
# name = gets.chomp
# puts "Bienvenid@ #{name}. ¿Que es lo que deseas hacer? (Introduce un número como opción)"

# while option != 0
#   puts "1 - Ver listado de casas"
#   puts "2 - Ordenar listado por precio"
#   puts "3 - Ordenar listado por capacidad"
#   puts "4 - Filtrar por ciudad"
#   puts "5 - Precio medio por lugar especifico"
#   puts "6 - Busqueda por precio exacto"
#   puts "7 - Busqueda por precio máximo"
#   puts "0 - Salir"
#   option = gets.to_i
#   case option

#     when 0
#       break
#     when 1
#       puts "Estos son los pisos que hay actualmente",""
#       list_homes homes
#     when 2
#       list_homes sort_by_price homes
#     when 3
#       list_homes sort_by_capacity homes
#     when 4
#       puts '¿Por que ciudad quieres filtrar?'
#       city_gets = gets.chomp
#       list_homes( filter_by_city(homes, city_gets) )
#     when 5
#       puts '¿De que ciudad quieres saber su media de precio?'
#       city_gets = gets.chomp
#       city_array = filter_by_city homes, city_gets
#       city_average = average_cities_filtered city_array
#       puts "La media de las casas en #{city_gets} es #{city_average}€"
#     when 6
#       puts 'Introduce el precio'
#       price_gets = gets.chomp.to_i
#       list_homes find_all_by_price homes, price_gets
#     when 7
#       puts 'Introduce el precio máximo'
#       price_gets = gets.chomp.to_i
#       list_homes find_by_range homes, price_gets 
#   end
# end

binding.pry
