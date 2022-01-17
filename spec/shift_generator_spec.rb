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

  xit "text" do

  end

 end
