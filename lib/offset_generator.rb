class OffsetGenerator

  def squared_date(date)
    (date.to_i ** 2).to_s
  end

  def four_digits(squared_date)
    squared_date[-4..-1]
  end



end
