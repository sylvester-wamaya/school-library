# frozen_string_literal: true

require './person'

# Defines a teacher's object
class Teacher < Person
  def initialize(id, age, specialization, parent_permission, name)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
