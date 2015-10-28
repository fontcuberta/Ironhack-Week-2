require 'pry'

class Muffin
  
  @@bakery = "Ironhack"

  def intilialize color, flavor
    @color = color
    @flavor = flavor
  end

  def self.show_bakery
    puts @@bakery
  end

end

binding.pry