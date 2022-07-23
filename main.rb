require_relative 'app'

# rubocop:disable Metrics/CyclomaticComplexity

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
end

# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.start
end

main
