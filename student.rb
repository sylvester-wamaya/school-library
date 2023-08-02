# frozen_string_literal: true

require './person'

# Defines a student's object
class Student < Person
  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
