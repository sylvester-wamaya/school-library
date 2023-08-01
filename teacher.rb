require './person.rb'

class Teacher < Person
    def initialize(id, name = "Unknown", age, parent_permission = true, specialization)
        super(id, name, age, parent_permission)
        @specialization = specialization
    end
end