require_relative 'key_generator'
require_relative 'offset_generator'

class ShiftGenerator
attr_reader :key_generator, :offset_generator

  def initialize
    @key_generator = KeyGenerator.new
    @offset_generator = OffsetGenerator.new
  end

  def shift_key(five_digit_key, date)
    five_digit_key = @key_generator.generate_key(five_digit_key)
    date = @offset_generator.four_digits(@offset_generator.squared_date(date))

    five_digit_key.zip(@offset_generator.generate_offset(date)).map do |pair|
      pair.sum
    end
  end

end
