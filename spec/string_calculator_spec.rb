require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      it 'returns zero' do
        expect(StringCalculator.add('')).to equal(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        expect(StringCalculator.add('1')).to equal(1)
      end
    end
  end
end