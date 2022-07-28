RSpec.describe 'Solver' do
  before(:all) do
    @solver = Solver.new
  end

  context 'should handle factorial function' do
    it 'should return the correct factorial' do
      expect(@solver.factorial(6)).to eq 720
    end

    it 'should throw error when negative is given' do
      expect { @solver.factorial(-7) }.to raise_error(RangeError, 'A negative number is not allowed')
    end
  end

  context 'should handle fizzbuzz function' do
    it 'should return fizz when number is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
    end
    it 'should return buzz when number is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return fizzbuzz when number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(90)).to eq 'fizzbuzz'
    end

    it 'should return number if not divisible by 3 and 5' do
      expect(@solver.fizzbuzz(13)).to eq '13'
    end

  end

  context 'should handle reverse function' do
    it 'should return the reversed word' do
      expect(@solver.reverse("John")).to eq 'nhoJ'
    end
  end
end
