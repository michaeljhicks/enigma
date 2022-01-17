class KeyGenerator

  def generate_key #creates random key as integer
    key = []
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    lengths = [1, 2, 3, 4, 5]
    (lengths.sample).times do
      key << numbers.sample
    end
    key
  end

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
