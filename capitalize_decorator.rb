# frozen_string_literal: true

require './decorator'

# Class for name captalization
class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
