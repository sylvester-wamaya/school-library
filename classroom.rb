# Creates a classroom class
class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(age, name, parent_permission)
    Student.new(age, self, name, parent_permission: parent_permission)
  end
end
