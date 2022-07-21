class App
  def initialize()
    @persons = []
    @books = []
    @rentals = []
  end
end

def list_options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def option(input)
  case input
  when '1'
    'List all books'
  when '2'
    'List all people'
  when '3'
    'Create a person'
  when '4'
    'Create a book'
  when '5'
    'Create a rental'
  when '6'
    'List all rentals'
  else
    'Kindly enter a number between 1 and 7'
end
