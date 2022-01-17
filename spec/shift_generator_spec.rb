require_relative 'spec_helper'
require './lib/shift_generator'

 RSpec.describe ShiftGenerator do
 	before(:each) do
 		@shift_generator = ShiftGenerator.new
 	end

 	it 'exists' do
 		expect(@shift_generator).to be_a(ShiftGenerator)
 	end

 	xit 'has attributes' do
 		expect(@shift_generator.attribute).to eq(attribute)
 	end
 end
