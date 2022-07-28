require './switches/menu'

class App
  def initialize()
    @menu = Menu.new
  end

  def start
    puts 'Welcome to School Library App!'
    @menu.inputs
    @menu.save_books
    @menu.save_persons
    @menu.save_rentals
  end
end
