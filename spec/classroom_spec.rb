require './core/classroom'
require './core/student'

describe do
  context 'Classroom class' do
    before :each do
      @chemistry_class = Classroom.new 'Chemistry classroom'
      @biology_class = Classroom.new 'Biology classroom'
    end
    it 'should display classroom label' do
      expect(@chemistry_class.label).to eq 'Chemistry classroom'
      expect(@biology_class.label).to eq 'Biology classroom'
    end
  end
end
