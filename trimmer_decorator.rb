class TrimmerDecorator < BaseDecorator

    def correct_name
        @nameable.correct_name.strip.truncate(10)
    end
end