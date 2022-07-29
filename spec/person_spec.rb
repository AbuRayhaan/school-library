require './core/person'

describe Person do
  context 'Person Class' do
    before (:each) do
      @person = Person.new(2, 'Rayhaan Hammed')
    end
    it 'should return person age' do
      expect(@person.age).to eq 2
    end
    it 'should return person name' do
      expect(@person.name).to eq 'Rayhaan Hammed'
    end
  end
end