require './lib/initiator'
require_relative './spec_helper'

RSpec.describe Initiator do
	before(:each) do
		@instance = Initiator.new(attribute)
	end

	it 'exists' do
		expect(@instance).to be_a(Initiator)
	end

	it 'has attributes' do
		expect(@instance.attribute).to eq(attribute)
	end
end
