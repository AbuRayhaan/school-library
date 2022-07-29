require_relative 'person'

class Student < Person
  attr_reader :classroom
  attr_accessor :parent_permission

  def initialize(id, classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @id = id || Random.rand(1...1000)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
