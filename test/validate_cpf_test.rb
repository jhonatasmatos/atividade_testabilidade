# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../cpf_validate/validate_cpf'

class ValidateCpfTest < Minitest::Test
  def test_contains_eleven_caracters
    assert_equal true, ValidateCpf.new('999.888.777-00').eleven_caracters?
  end

  def test_no_contains_eleven_caracters
    assert_equal 'cpf invalid', ValidateCpf.new('999.888.777').eleven_caracters?
  end

  def test_digit_is_valid
    assert_equal true, ValidateCpf.new('529.982.247-25"').digit_is_valid?
  end
end
