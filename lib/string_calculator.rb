class StringCalculator
  def sum(number)
    return 0 if number.empty?
    return number.to_i if number.to_i.to_s == number
    number.split(/,|\n|;/).map(&:to_i).sum
  end
end
