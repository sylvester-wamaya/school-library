#!/usr/bin/env ruby
require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def start
    puts 'Welcome to our library! 👋'

    loop do
      options = menu
      menu_input(options)
    end
  end

  def menu
    puts
    puts '---------------------------------------------'
    puts 'Console Menu'
    puts '1. List all books 📕'
    puts '2. List all people 👭'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rental for a given person id'
    puts '0. Exit'
    puts '----------------------------------------------'
    puts 'Enter your choice'
    gets.chomp.to_i
  end

 
  def menu_input(input)
    case input
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rentals_by_id
    when 0
      puts '...Thanks you🙏....'
      exit
    else
      puts 'Invalid number: Try again'
    end

  end
end

def main
  main = Main.new
  main.start
end

main