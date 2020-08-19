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
    return dividend / divisor.to_f
  end

  def square(number)
    return number * number
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
    it 'should find the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-4,-3)
      expect(result).to eq(-7)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(8, 3)
      expect(result).to eq(5)
    end
    it 'should return the difference of two negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-8, -3)
      expect(result).to eq(-5)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-8, -3)
      expect(result).to eq(24)
    end
  end
  describe '#divide' do
    it 'should return the quotient' do
      calculator = Calculator.new
      result = calculator.divide(30, 10)
      expect(result).to eq(3)
    end
    it 'should return the quotient' do
      calculator = Calculator.new
      result = calculator.divide(3, 2)
      expect(result).to eq(1.5)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(9)
      expect(result).to eq(81)
    end
  end
  describe '#power' do
    it 'should return the power of a number' do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end
end



