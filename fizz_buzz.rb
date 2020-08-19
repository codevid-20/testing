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
    return 1
  end
end



RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(1)
      expect(result).to eq(1)
    end
  end
end
