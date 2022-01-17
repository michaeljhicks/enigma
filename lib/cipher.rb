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
    encrypted_hash = Hash[@alphabet.zip(@alphabet.rotate(shift))]
    return letter if !encrypted_hash.keys.include?(letter)
    encrypted_hash.fetch(letter)
  end

  def encrypt_sliced_block(block, shift_key)
    block.map.with_index do |letter, index|
      encrypt_letters(letter, shift_key[index])
    end
  end

  def encrypt_full_message(message, shift)
    slice_message(message).map do |block|
      encrypt_sliced_block(block, shift)
    end.join
  end

  def decrypt_letters(letter, shift)
    decrypted_hash = Hash[@alphabet.zip(@alphabet.rotate(-shift))]
    return letter if !decrypted_hash.keys.include?(letter)
    decrypted_hash.fetch(letter)
  end

  def decrypt_sliced_block(block, shift_key)
    block.map.with_index do |letter, index|
      decrypt_letters(letter, shift_key[index])
    end
  end

end
