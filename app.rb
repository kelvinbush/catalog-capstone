require './lib/catalog/menu'

class App
  def initialize()
    @menu = Menu.new
  end

  def start
    puts 'Welcome to Kevin, Simba and Hammed\'s Ruby Capstone! Group'
    @menu.inputs
  end
end
  