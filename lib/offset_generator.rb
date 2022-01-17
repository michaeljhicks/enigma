class OffsetGenerator

  def squared_date(date)
    (date.to_i ** 2).to_s
  end

  def four_digits(squared_date)
    squared_date[-4..-1]
  end

  def generate_offset(last_four_digits)
    last_four_digits_array = [last_four_digits[0],
    last_four_digits[1],
    last_four_digits[2],
    last_four_digits[3]]
    last_four_digits_array.map(&:to_i) #found this on stack overflow. don't entirely understand it
  end

end
