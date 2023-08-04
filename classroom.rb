class Classroom
    attr_accessor :label, :students

    def inititialize(label)
        @label = label
        @students = []
    end

    def add_student(student)
        @students << student
        student.classroom = self
    end
end