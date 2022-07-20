require_relative 'decorator'

class Trimmer < Decorator
  def correct_name
    @nameable.correct_name.split.first(10).join(' ')
  end
end
