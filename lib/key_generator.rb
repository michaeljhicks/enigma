class KeyGenerator

  def generate_key
    key = []
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    lengths = [1, 2, 3, 4, 5]
    (lengths.sample).times do
      key << numbers.sample
    end
    key
  end


end
