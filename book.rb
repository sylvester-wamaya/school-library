# Creates a Book class
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @author = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental unless @rentals.include?(rental)
    rental.book = self
  end
end
