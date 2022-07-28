RSpec.describe 'Solver' do
  before(:all) do
    @solver = Solver.new
  end

  context 'should handle factorial function' do
    it 'should return the correct factorial' do
      expect(@solver.factorial(6)).to eq 720
    end

    it 'should throw error when negative is given' do
      expect(@solver.factorial(-7)).to raise_error(RangeError, 'A negative number is not allowed')
    end
  end
end
