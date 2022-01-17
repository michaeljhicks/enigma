require_relative 'key_generator'
require_relative 'offset_generator'

class ShiftGenerator
attr_reader :key_generator, :offset_generator

  def initialize
    @key_generator = KeyGenerator.new
    @offset_generator = OffsetGenerator.new
  end

end
