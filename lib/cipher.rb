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

  def slice_message(message)
    message.downcase.split("").each_slice(4).to_a
  end

  def encrypt_letters(letter, shift)
    encrypted = Hash[@alphabet.zip(@alphabet.rotate(shift))]
    return letter if !encrypted.keys.include?(letter)
    encrypted.fetch(letter)
  end

end
