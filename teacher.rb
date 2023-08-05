require './person'

# Defines a teacher's object
class Teacher < Person
  def initialize(age, name = 'Unknown', specialization)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
