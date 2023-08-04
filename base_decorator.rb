require './nameable'
# A Decorator class
class BaseDecorator < Nameable

    attr_accessor :nameable
    
    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name 
        @nameable.correct_name
    end
end