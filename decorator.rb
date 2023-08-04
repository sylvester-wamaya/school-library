require './nameable'
# A Decorator class
class Decorator < Nameable
  def initialize(nameable, *args)
    super(*args)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
