# given a number, return that number
# but if it's divisible by 3, return 'fizz' instead
# if it's divisible by 5, reutnr 'buzz' instead
# if it's divisible by 3 and 5, return 'fizz buzz'

# 1 1
# 2 2
# 3 'fizz'
# 4 4
# 5 'buzz'
# 6 'fizz'
# 7 7
# 8 8
# 9 'fizz'
# 10 'buzz'
# 11 11
# 12 'fizz'
# 13 13
# 14 14
# 15 'fizz buzz'
# 16 16
# 17 17

class FizzBuzz
  def output(number)
    if number % 5 == 0 && number % 3 == 0
      return 'fizz buzz'
    elsif number % 3 == 0
      return 'fizz'
    elsif number % 5 == 0
      return 'buzz'    
    end
    return number
  end
end



RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 when given 2' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(2)
      expect(result).to eq(2)
    end
    it 'should return \'fizz\' when given 3' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 5' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz\' when given 6' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 10' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(10)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz buzz\' when given 15' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(15)
      expect(result).to eq('fizz buzz')
    end
    it 'should return \'fizz\' when given 84' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(84)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' when given 85' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(85)
      expect(result).to eq('buzz')
    end
  end
end
