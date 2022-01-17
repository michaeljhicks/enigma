require_relative 'spec_helper'
require './lib/shift_generator'

 RSpec.describe ShiftGenerator do
 	before(:each) do
 		@shift_generator = ShiftGenerator.new
    @key_generator = KeyGenerator.new
    @offset_generator = OffsetGenerator.new
 	end

 	it 'exists' do
 		expect(@shift_generator).to be_a(ShiftGenerator)
 	end

  it "has attributes" do
    expect(@shift_generator.key_generator).to be_a(KeyGenerator)
    expect(@shift_generator.offset_generator).to be_a(OffsetGenerator)
  end

  it "can split return value from generating random key into separate keys" do
    expect(@shift_generator.key_generator.generate_key("02715")).to eq([02, 27, 71, 15])
  end

  it "can retrieve final shift values" do
    expect(@shift_generator.shift_key("02715", "170122")).to eq([6, 35, 79, 19])
  end

 end
