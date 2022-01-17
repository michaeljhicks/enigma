require './lib/key_generator'
require_relative 'spec_helper'

 RSpec.describe KeyGenerator do
 	before(:each) do
 		@key_generator = KeyGenerator.new
    @range = Range.new(1, 9)
 	end

 	it 'exists' do
 		expect(@key_generator).to be_a(KeyGenerator)
 	end

  it "#generate key" do
    expect(@key_generator.generate_key).to be_a(Array)
    expect(@key_generator.generate_key.first.class).to eq(Integer)
    expect(@key_generator.generate_key.last.class).to eq(Integer)
    expect(@key_generator.generate_key.sample.class).to eq(Integer)
    expect(@range.include?(@key_generator.generate_key.length)).to be(true) 
  end

 end
