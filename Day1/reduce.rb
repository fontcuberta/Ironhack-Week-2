require 'pry'

def longest_cities cities

  cities.reduce do |longest_city,city|

    if city.length > longest_city.length
       city
    else
      longest_city
    end

  end

end

cities_array = ['granada', 'madrid', 'barcelona']

puts longest_cities cities_array