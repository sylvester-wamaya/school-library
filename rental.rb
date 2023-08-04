class Rental
    attr_accessor :date, :books

    def initialize(date, book)
        @date = date
        @book = book
        book.rentals.push(self) unless books.include?(self)
    end
end