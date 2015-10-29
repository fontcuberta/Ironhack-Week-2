require 'pry'

class Terminal

  attr_reader :params

  def initialize name, password
    @name = name
    @password = password
    @params = {}
  end

  def init
    get_name
    get_password
    check_auth
  end

  def get_name
    print "Introduce tu nombre: "
    @params[:password] = gets.chomp
  end

  def get_password
    print "Introduce tu password: "
    @params[:username] = gets.chomp
  end

  def get_text
    puts "Introduce un texto"
    @params << gets.chomp
  end

  def valid_user?
    if @name == @params[:username] && @password == @params[:password]
      get_text
      count_words
    else
      puts "Tu nombre o contraseña son incorrectos"
    end
  end

  def count_words
    puts @params[2].size
  end

end


Terminal.new('rquesada', '12345').init

binding.pry
