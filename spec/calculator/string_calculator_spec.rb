require 'string_calculator'

describe StringCalculator do
  describe '#sum' do
    context 'when given input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = StringCalculator.new
        expect(calculator.sum('')).to eq(0)
      end
    end
  end
end
