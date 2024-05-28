require 'string_calculator'

describe StringCalculator do
  describe '#sum' do
    context 'when given input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = StringCalculator.new
        expect(calculator.sum('')).to eq(0)
      end
    end

    context 'when given input is a single number' do
      it 'returns the number' do
        calculator = StringCalculator.new
        expect(calculator.sum('1')).to eq(1)
      end
    end

    context 'when given input contains two numbers separated by comma' do
      it 'returns the sum of the numbers' do
        calculator = StringCalculator.new
        expect(calculator.sum('2,3,6')).to eq(11)
      end
    end

    context 'when input contains multiple numbers separated by comma' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.sum('1,2,3,4,5,6,7,8,9,10')).to eq(55)
      end
    end
  end
end
