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

    context 'when input contains custom delimiter' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.sum("//;\n1;2;3;5")).to eq(11)
      end
    end

    context 'when input contains numbers separated by new lines and commas' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.sum("1\n2,3")).to eq(6)
      end
    end

    context 'when input contains negative numbers' do
      it 'raises an exception with negative numbers' do
        calculator = StringCalculator.new
        expect { calculator.sum('1,-2,3,-4,9,-8') }.to raise_error("Negative numbers not allowed: -2, -4, -8")
      end
    end
  end
end
