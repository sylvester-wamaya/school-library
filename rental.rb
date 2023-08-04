class Rental
    attr_accessor :date, :books

    def initialize(date, book, person)
        @date = date
        @book = book
        @person = person
        book.rentals.push(self) unless books.rentals.include?(self)
        person.rentals.push(self) unless person.rentals.include?(self)
    end
end