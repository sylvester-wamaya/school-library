# Defines a person's object
class Person
  attr_accessor :name, :age
  attr_writer :id

  def initialize(id, age, parent_permission: true, name: 'Unknown')
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
