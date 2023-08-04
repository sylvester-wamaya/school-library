require './person'

# Defines a student's object
class Student < Person
  attr_accessor :classroom
  
  def initialize(id, age, classroom, parent_permission, name)
    super(id, name, age, parent_permission)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)      
    end
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
