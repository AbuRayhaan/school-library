require_relative person

class student < person
  def initialize (@classroom, age, name ='unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end
  
  def play_hooky
    "¯\(ツ)/¯"
  end
end
