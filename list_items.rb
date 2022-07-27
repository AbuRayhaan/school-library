# class List

#   def list_books
#     puts 'Catalog is empty! Please add a book.' if @books.empty?
#     @books.each_with_index do |book, index|
#       puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
#     end
#   end
    
#   def list_people
#     puts 'No records found! Please add a person.' if @people.empty?
#     @people.each_with_index do |person, index|
#       puts "#{index}) [#{person.class.name}] Name: #{person.name}, Age: #{person.age}, id: #{person.id}"
#     end
#   end

#   def list_all_rentals
#     puts 'Enter ID of person: '
#     id = gets.chomp.to_i
#     @rentals.each do |rental|
#       if rental.person.id == id
#         puts 'Rented Book: '
#         puts "Person: #{rental.person.name} Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
#       else
#         puts 'Records not found for given ID'
#       end
#     end
#   end
# end