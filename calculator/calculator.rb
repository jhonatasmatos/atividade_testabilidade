# frozen_string_literal: true

class Calculator
  def initialize(value_a = nil, value_b = nil, value_c = nil)
    @value_side = value_a
    @value_height = value_b
    @value_length = value_c
  end

  def calculate_quadratic
    @value_side * @value_height
  end

  def negative?
    @value_side.negative? || @value_height.negative? || @value_length.negative?
  end

  def number?
    numeric?(@value_side) && numeric?(@value_height) && numeric?(@value_length)
  end

  def calculate_cubic
    @value_side * @value_height * @value_length
  end

  private

  def numeric?(value)
    value.is_a? Numeric
  end
end
