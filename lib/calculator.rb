class Calculator
  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def key_creator #creates a random (integer) key
    key = []
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    sizes = [1, 2, 3, 4, 5]
    (sizes.sample).times do
      key << numbers.sample
    end
    key
  end

end
