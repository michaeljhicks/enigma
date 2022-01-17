require './lib/offset_generator'

 RSpec.describe OffsetGenerator do
 	before(:each) do
 		@offset_generator = OffsetGenerator.new
 	end

 	it 'exists' do
 		expect(@offset_generator).to be_a(OffsetGenerator)
 	end

 	it 'can square the date' do
 		expect(@offset_generator.squared_date("170122")).to eq("28941494884")
 	end
 end
