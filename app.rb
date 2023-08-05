require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'


# Define the UI app methods
class App 
    def initialize
        @people = []
        @books = []
        @rentals = []
    end

    def list_books
        if @books.empty?
            puts 'No books found'
        else
            @books.each_with_index{|book, index| puts "#{index + 1}. #{book.title} by #{book.author}"}
        end

    end

    def list_people
        if @people.empty?
            puts 'No person found'
        else
            @people.each_with_index {|person, index| puts "#{index + 1}. #{person.name} (#{person.class})"}
        end

    end

    def create_person
        print 'Enter [1] to create a student or [2] to create a teacher: '
        type = gets.chomp.to_i
        if type == 1
          create_student
        elsif type == 2
          create_teacher
        else
          puts "Invalid number choice"
        end
    end

    def create_student
        puts 'Enter the following fields:'
        print 'Age: '
        age = gets.chomp.to_i
        print 'Name: '
        name = gets.chomp.capitalize
        print 'Classroom: '
        classroom = gets.chomp.capitalize
        print 'Has a parent permission? [Y/N]: '
        parent_permission = gets.chomp.upcase == 'Y'
        @people << Student.new(classroom: classroom, age: age, parent_permission: parent_permission, name: name)
        puts 'Student created successfully'
    end
        def create_teacher
            puts 'Enter the following fields:'
            print 'Age: '
            age = gets.chomp.to_i
            print 'Name: '
            name = gets.chomp.capitalize
            print 'Specialization: '
            specialization = gets.chomp.capitalize
            @people << Teacher.new(specialization: specialization, age: age, name: name)
            @people << new_teacher
            puts 'Teacher created successfully'
        end

      def create_book
        print 'Enter Title: '
        title = gets.chomp.capitalize
        print 'Enter Author: '
        author = gets.chomp.capitalize
        puts title, author
        @books << Book.new(title: title, author: author)
      end
    
      def create_rental
        puts 'Select a book from the list by number: '
        list_books
        number_book = gets.chomp.to_i
        book = @books[number_book - 1]
        puts 'Select a person from the list by number: '
        list_people
        number_person = gets.chomp.to_i
        person = @people[number_person - 1]
        print 'Date: '
        date = gets.chomp.to_s
        @rentals << Rental.new(date: date, book: book, person: person)
        print 'Rental created successfully'
      end
    
      def list_rentals_by_id
        print 'Enter Id of a person: '
        id = gets.chomp.to_i
        person = @people.find { |person| person.id == id }
    
        if person.nil?
          puts "No person found."
        elsif person.rentals.empty?
            puts "No Rentals found"
        else
            person.rentals.each do |rental|
            puts "#{rental.book.title} by #{rental.book.author} on #{rental.date}"
          end
        end
        end
      
end  