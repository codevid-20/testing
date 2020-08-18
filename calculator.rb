require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end


# driver code

# calculator = Calculator.new

# if calculator.add(4,7) == 11
#   p "test passed"
# else
#   p "test failed"
# end


RSpec.describe Calculator do
  describe '#add' do
    it 'should find the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(4,7)
      expect(result).to eq(11)
    end
  end
end



