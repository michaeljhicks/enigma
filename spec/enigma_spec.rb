require 'date'
require './lib/enigma'

RSpec.describe Enigma do

let(:enigma) {Enigma.new}


 	it 'exists' do
 		expect(enigma).to be_a(Enigma)
 	end

 	xit 'has attributes' do
 		expect(instance.attribute).to eq (attribute)
 	end
end
