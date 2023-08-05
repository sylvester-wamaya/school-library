#!/usr/bin/env ruby
require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def start
    puts 'Welcome to our library! 👋'
   # app = App.new
    loop do
      options = menu
      menu_input(options, app)
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

  def menu_input(input, app)
    operations = {
      1 => :list_books,
      2 => :list_people,
      3 => :create_person,
      4 => :create_book,
      5 => :create_rental,
      6 => :list_rentals_by_id,
      0 => :quit
    }
    action = operations[input]
    if action
      app.send(action)
    else
      puts 'Invalid input please try again'
    end
  end
end

def main
  main = Main.new
  main.start
end

main
