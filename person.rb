class Person
    def initialize(name = "Unknown", age, parent_permission = true)
        @id
        @name = name
        @age = age
    end
    
    attr_accessor :name, :age
    attr_writer :id

    Private

    def of_age?
        @age >= 18
    end
end