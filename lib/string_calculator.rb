class StringCalculator
  def sum(number)
    raise "Negative numbers not allowed: #{find_negative_numbers(number)}" if contains_negative_numbers?(number)

    return 0 if number.empty?

    delimiter, numbers = extract_delimiter(number)
    numbers = numbers.split(delimiter)
    numbers.sum(&:to_i)
  end

  private

  def contains_negative_numbers?(number)
    number.split(/[,\n]/).any? { |num| num.to_i.negative? }
  end

  def find_negative_numbers(number)
    negative_numbers = number.split(/[,\n]/).select { |num| num.to_i.negative? }
    negative_numbers.join(', ')
  end

  def extract_delimiter(number)
    if number.start_with?("//")
      delimiter, number = number[2], number[4..]
      delimiter = Regexp.escape(delimiter)
    else
      delimiter = /[,\n]/
    end
    [delimiter, number]
  end
end
