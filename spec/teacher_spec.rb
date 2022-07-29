require './core/teacher'

describe do
  context 'Teacher class' do
    before (:each) do
      @teacher = Teacher.new(761, 'Chemistry', 33, 'Mrs. Akanji')
      @book = Book.new(5, 'Billionaires Behaviour', 'Stephen Akintayo')
    end
    it 'should return the teacher\'s name' do
        expect(@teacher.name).to eq 'Mrs. Akanji'
    end
    it 'should return the teacher\'s specialization' do
      expect(@teacher.specialization).to eq 'Chemistry'
    end
    it 'should return the teacher\'s age' do
      expect(@teacher.age).to eq 33
    end
    it 'should return book rented by teacher' do
      @teacher.add_rental(@book, '1/1/2021')
      @teacher.rentals.each do |rental|
      expect(rental.book.title).to eq 'Billionaires Behaviour'
      end
    end
    it 'should return the author of book rented by teacher' do
      @teacher.add_rental(@book, '1/1/2021')
      @teacher.rentals.each do |rental|
      expect(rental.book.author).to eq 'Stephen Akintayo'
      end
    end
  end
end