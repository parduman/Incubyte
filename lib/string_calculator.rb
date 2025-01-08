class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?('//')
      numbers = numbers[2..]
      delimiter, numbers = numbers.split("\n", 2)
      return numbers.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i).sum
    end
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end