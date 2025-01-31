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

    context 'when input is two numbers separated by a comma' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('1,2')).to eq(3)
      end
    end

    context 'when input is multiple numbers separated by commas' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('1,2,3,4')).to eq(10)
      end
    end

    context 'when input contains new lines between numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'when a custom delimiter is specified' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when input contains negative numbers' do
      it 'raises an exception with the negative numbers listed' do
        expect { StringCalculator.add('1,-2,3,-4') }.to raise_error('negatives not allowed: -2, -4')
      end
    end
  end
end