# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../calculator/calculator'

class CalculatorTest < Minitest::Test
  def test_calculate_quadratic
    assert_equal 4, Calculator.new(2, 2).calculate_quadratic
  end

  def test_number_is_negative
    assert_equal true, Calculator.new(-2, -3).negative?
  end

  def test_is_not_number
    assert_equal false, Calculator.new('a', 'b').number?
  end

  def test_calculate_cubic
    assert_equal 40, Calculator.new(4, 5, 2).calculate_cubic
  end

  def test_calculate_number_float
    assert_equal 10, Calculator.new(2.5, 2, 2).calculate_cubic
  end
end
