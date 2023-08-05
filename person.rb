require './nameable'
# Defines a person's object
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = uniq_id
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def add_rental(book, date)
    rental = Rental.new(date, book, self)
    @rentals << rental
    rental
  end

  private

  def of_age?
    @age >= 18
  end

  def uniq_id
    Random.rand(1..1000)
  end
end
