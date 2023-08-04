require './decorator'

# Class for name captalization
class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
