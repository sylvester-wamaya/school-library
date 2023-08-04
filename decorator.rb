# frozen_string_literal: true

require './nameable'
# A Decorator class
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
