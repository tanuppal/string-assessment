class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers

    delimiter = /,|\n/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2])
      numbers = parts[1]
    end

    numbers.split(/#{delimiter}/).map(&:to_i).reduce(:+)
  end
end
