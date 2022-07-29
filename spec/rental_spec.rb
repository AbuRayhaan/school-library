require './core/rental'
require './core/book'
require './core/teacher'
require './core/student'

describe do
  context 'Rental class' do
    before (:each) do
      @book = Book.new(5, 'Billionaires Behaviour', 'Stephen Akintayo')
      @person = Teacher.new(nil, 'Chemistry', 33, 'Mrs. Akanji')
      @rental = Rental.new('1/1/2022', @person, @book)
    end
    it 'should display rented book title' do
      @person.rentals.each do |rental|
        expect(rental.book.title).to eq 'Billionaires Behaviour'
      end
    end
    it 'should return book rental\'s name' do
      @person.rentals.each do |rental|
        expect(rental.person.name).to eq 'Mrs. Akanji'
      end
    end
    it 'should display rented date' do
      @person.rentals.each do |rental|
        expect(rental.date).to eq '1/1/2022'
      end
    end
  end
end
