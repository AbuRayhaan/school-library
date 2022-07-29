require './core/student'
require './core/book'

describe do
  context 'Student Class' do
    before (:each) do
      @student = Student.new(nil, nil, 2, 'Rayhaan Hammed', parent_permission: false)
      @book = Book.new(nil, 'Success is key', 'Hammed Adisa')
    end
    it 'should return student age' do
      expect(@student.age).to eq 2
    end
    it 'should return student name' do
      expect(@student.name).to eq 'Rayhaan Hammed'
    end
    it 'should return student\'s parent\'s_permission' do
      expect(@student.parent_permission).not_to eq true
    end
    it 'should return book rented by student' do
      @student.add_rental(@book, '2/3/2021')
      @student.rentals.each do |rental|
        expect(rental.book.title).to eq 'Success is key'
      end
    end
  end
end