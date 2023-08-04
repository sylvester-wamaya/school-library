require './person'

# Defines a student's object
class Student < Person
  def initialize(id, age, classroom, parent_permission, name)
    super(id, name, age, parent_permission)
    @classroom = classroom
    classroom.students.push(self) unless classroom.include?(self)      
    end
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
