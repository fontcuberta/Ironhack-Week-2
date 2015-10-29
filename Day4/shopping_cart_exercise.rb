require 'pry'

class ShoppingCart

  attr_reader :cart

  def initialize items
    @cart = []
    @items = items
  end

  def add_item_to_cart item_name
    @cart << @items[item_name].new
  end

  def show
    @cart.each do |item|
      puts "#{item.name} #{item.cost}$"
    end
  end

  def cost
    @cart.reduce(0.0) { |total,item| total + item.cost }
  end

end


class Item
  attr_reader :name, :cost

  def initialize name, cost
    @name = name
    @cost = cost
  end

end


class Apple < Item
  def initialize
    super('apple', 10)
  end
end


class Orange < Item
  def initialize
    super('orange', 5)
  end
end

class Grapes < Item
  def initialize
    super('grapes', 15)
  end
end


class Banana < Item
  def initialize
    super('banana', 20)
  end
end

class Watermelon < Item
  def initialize
    super('watermelon', 50)
  end
end

fruits = {
  apple: Apple,
  orange: Orange,
  grapes: Grapes,
  banana: Banana,
  watermelon: Watermelon
}

cart = ShoppingCart.new fruits

cart.add_item_to_cart :apple
cart.add_item_to_cart :orange
cart.add_item_to_cart :apple
cart.add_item_to_cart :watermelon
cart.add_item_to_cart :grapes
cart.add_item_to_cart :orange
cart.add_item_to_cart :banana

cart.show
puts cart.cost