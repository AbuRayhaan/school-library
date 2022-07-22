require_relative book
require_relative person
require_relative student
require_relative teacher
require_relative rental

class App
  def initialize()
    @people = []
    @books = []
    @rentals = []
  end

  def list_books
    puts 'Catalog is empty! Please add a book.' if @books.empty?
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
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
    when 1 then create_student
    when 2 then create_teacher
    else puts 'Invalid selection'
    end
  end

  def create_student
    print 'Create a new student'
    print 'Student Name:'
    name = gets.chomp
    print 'Student Age: '
    age = gets.chomp.to_i
    print 'Has parent permission? [y/n]: '
    parent_permission = gets.chomp.downcase

    case parent_permission
    when 'n' then
      puts 'Student doesn\'t have parent\'s permission, unable to create student'
    when 'y' then
      student = Student.new(age: age, name: name, parent_permission: parent_permission, classroom: @classroom)
      @people << student
      puts 'Student created successfully!'
    end
  end

  def create_teacher
    print 'Create a new teacher'
    print 'Teacher Name: '
    name = gets.chomp
    print 'Teacher Age: '
    age = gets.chomp.to_i
    print 'Teacher\'s specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age: age, name: name, specialization: specialization)
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
    @books.each_with_index{|book, index| puts "#{index}) #{book.title}"}
    book_id = gets.chomp.to_i
    book = @books[book_id]

    puts 'Select a person using it\'s number: '
    @people.each_with_index {|person, index| puts "#{index}) #{person}"}
    person_id = gets.chomp.to_i
    person = @people[person_id]

    puts 'Date: '
    date = gets.chomp
    @rentals << Rental.new(book, person, date)
    puts 'Records created successfully'
  end

  def list_all_rentals
    puts 'Enter ID of person: '
    id = gets.chomp.to_i
    rentals = @rentals.select |r|
    if r.owner.id == id
      puts 'Rentals: '
      puts rentals
    else
      puts 'Records not found for given ID'
    end
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
