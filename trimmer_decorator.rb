# frozen_string_literal: true

require './decorator'

# A class to trim names
class TrimmerDecorator < Decorator
  def correct_name
    super[0..9]
  end
end
