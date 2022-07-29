require './core/book'

describe Book do
  context 'Book Class' do
    before :each do
      @book = Book.new(5, 'Billionaires Behaviour', 'Stephen Akintayo')
    end
    it 'should return the book id' do
      expect(@book.id).to eq 5
    end
    it 'should return the book title' do
      expect(@book.title).to eq 'Billionaires Behaviour'
    end
    it 'should return the book author' do
      expect(@book.author).to eq 'Stephen Akintayo'
    end
  end
end
