class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?('//')
      numbers = numbers[2..]
      delimiter, numbers = numbers.split("\n", 2)
      numbers =  numbers.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)
    else
      numbers = numbers.split(/,|\n/).map(&:to_i)
    end

    negatives = numbers.select { |n| n < 0 }
    raise "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
    
    numbers.sum
  end
end