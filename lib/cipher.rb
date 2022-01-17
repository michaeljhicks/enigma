require_relative './modules/calculable'
require_relative 'shift_generator'

class Cipher
  include Calculable
  attr_reader :default_key,
              :default_date,
              :alphabet,
              :shift_generator

  def initialize
    @default_key = calculate_random_key
    @default_date = create_date
    @alphabet = ("a".."z").to_a << " "
    @shift_generator = ShiftGenerator.new
  end

  def method_name

  end

end
