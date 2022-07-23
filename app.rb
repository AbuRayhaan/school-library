require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'classroom'

class App
  def initialize()
    @people = []
    @books = []
    @rentals = []
    @main_classroom = Classroom.new('Main Class')
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

  def list_books
    puts 'Catalog is empty! Please add a book.' if @books.empty?
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    puts ''
  end

  def list_people
    puts 'Database is empty! Please add a person.' if @people.empty?
    @people.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, Age: #{person.age}, id: #{person.id}"
    end
  end

  def create_person
    puts 'To create a student press 1, to create a teacher press 2: '
    n = gets.chomp
    case n
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid selection'
    end
  end

  def create_student
    puts 'Create a new student'
    print 'Student Name: '
    name = gets.chomp
    print 'Student Age: '
    age = gets.chomp.to_i
    print 'Has parent permission? [y/n]: '
    parent_permission = gets.chomp.downcase

    case parent_permission
    when 'n'
      puts 'Student doesn\'t have parent\'s permission, unable to create student.'
    when 'y'
      student = Student.new(@main_classroom, age, name, parent_permission: parent_permission)
      @people << student
      puts 'Student created successfully!'
    end
  end

  def create_teacher
    puts 'Create a new teacher'
    print 'Teacher Name: '
    name = gets.chomp
    print 'Teacher Age: '
    age = gets.chomp.to_i
    print 'Teacher\'s specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(specialization, age, name)
    @people << teacher
    puts 'Teacher created successfully!'
  end

  def create_book
    puts 'Create a new book.'
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts "Book #{title} created successfully"
  end

  def create_rental
    puts 'Select a book using it\'s number: '
    @books.each_with_index { |book, index| puts "#{index}) #{book.title}" }
    book_id = gets.chomp.to_i
    book = @books[book_id]

    puts 'Select a person using it\'s number: '
    @people.each_with_index do |person, index| 
      puts "#{index}) [#{person.class.name}] Name: #{person.name}, Age: #{person.age}, id: #{person.id}" 
    end
    person_id = gets.chomp.to_i
    person = @people[person_id]

    puts 'Date: '
    date = gets.chomp
    @rentals << Rental.new(date, person, book)
    puts 'Records created successfully'
  end

  def list_all_rentals
    puts 'Enter ID of person: '
    id = gets.chomp.to_i
    puts 'Rented Books: '
    @rentals.each do |rental|
      if rental.person.id == id
        puts "Person: #{rental.person.name} Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
      else
        puts
        puts 'Records not found for given ID'
      end
    end
  end
end
