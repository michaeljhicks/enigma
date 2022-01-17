class KeyGenerator

  def generate_key(five_digit_key)
    five_digit_key_array = [
    five_digit_key[0..1],
    five_digit_key[1..2],
    five_digit_key[2..3],
    five_digit_key[3..4]]
    five_digit_key_array.map(&:to_i)
  end

  # def generate_key #creates random key as integer
  #   key = []
  #   numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  #   lengths = [1, 2, 3, 4, 5]
  #   (lengths.sample).times do
  #     key << numbers.sample
  #   end
  #   key
  # end

  def key_padder(key_nums)
    string_numbers = key_nums.to_s.delete("[] ,")
    string_numbers.rjust(5, '0')
  end

  def verify_length(key)
    if key.size == 5
      true
    else
      false
    end
  end

end
