require_relative 'nameable'

class Capitalize < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
