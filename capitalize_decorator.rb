require './base_decorator.rb'

# Class for name captalization
class CapitalizeDecorator < BaseDecorator

    def correct_name
        @nameable.correct_name.captilize
    end
end