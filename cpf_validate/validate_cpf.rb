# frozen_string_literal: true

class ValidateCpf
  def initialize(cpf_number)
    @cpf_number = cpf_number
  end

  def eleven_caracters?
    if @cpf_number.length.eql? 14
      true
    else
      'cpf invalid'
    end
  end

  def digit_is_valid?
    first_number_digit = @cpf_number[12].to_i
    second_number_digit = @cpf_number[13].to_i
    @cpf_formated = @cpf_number.gsub(/[.-]/, '')

    digit1 = calculate_first_digit(@cpf_formated)
    digit2 = calculate_second_digit(@cpf_formated)

    true if digit1 == first_number_digit && digit2 == second_number_digit
  end

  private

  def calculate_first_digit(number)
    @count = 10
    @position = 0
    @result = 0
    while @count > 1
      @result += number[@position].to_i * @count
      @count -= 1
      @position += 1
    end
    @result * 10 % 11
  end

  def calculate_second_digit(number)
    @count = 11
    @position = 0
    @result = 0
    while @count > 1
      @result += number[@position].to_i * @count
      @count -= 1
      @position += 1
    end
    @result * 10 % 11
  end
end
