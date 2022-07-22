class App
  def initialize()
    @persons = []
    @books = []
    @rentals = []
  end

  def list_books
    puts 'Catalog is empty! Please add a book.' if @books.empty?
  end

  def list_people
    puts 'list people in my database'
  end

  def create_person
    puts 'create a person in my database'
  end

  def create_book
    puts 'create a book in my database'
  end

  def create_rental
    puts 'create a rental in my database'
  end

  def list_all_rentals
    puts 'list book rentals in my database'
  end

  def execute_inputs
    input = Integer(gets.chomp)
    case input
    when 1 then list_books
    when 2 then list_people
    when 3 then create_person
    when 4 then create_book
    when 5 then create_rental
    when 6 then list_all_rentals
    when 7
      puts 'Thank you for using this app. Goodbye'
      exit
    else
      puts 'Kindly enter a number between 1-7'
  end

  def start
    puts 'Welcome to School Library App!'
    puts ' '
    puts 'Please choose an option by entering a number:'
    loop do
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      execute_inputs
    end
  end
end
