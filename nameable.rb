# frozen_string_literal: true

# A class to edit names
class Nameable
  def initilialize(nameable)
    @nameable = nameable
  end

  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
