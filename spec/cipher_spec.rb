require_relative 'spec_helper'
require './lib/cipher'

 RSpec.describe Cipher do
 	before(:each) do
 		@cipher = Cipher.new
 	end

 	it 'exists' do
 		expect(@cipher).to be_a(Cipher)
 	end

 	# it 'has attributes' do
 	# 	expect(@cipher.attribute).to eq(attribute)
 	# end
 end
