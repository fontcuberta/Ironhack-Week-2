class Cupcake < Muffin
  
  def initialize(color, flavour, topping)
    # Super busca en la clase padre los parametros que ya estan definidos
    # y los agrega a la clase que hereda
    super(color, flavour)
    @topping = topping
  end

  def eat
    puts "Qué bueno el mondongo"
  end

end