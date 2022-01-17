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

  it "can split return values from generated random keys into separate keys" do
    expect(@key_generator.generate_key("02715")).to eq([02, 27, 71, 15])
  end

  # it "generate a random key as an integer" do
  #   expect(@key_generator.generate_key).to be_a(Array)
  #   expect(@key_generator.generate_key.first.class).to eq(Integer)
  #   expect(@key_generator.generate_key.last.class).to eq(Integer)
  #   expect(@key_generator.generate_key.sample.class).to eq(Integer)
  #   expect(@range.include?(@key_generator.generate_key.length)).to be(true)
  # end

  it "can change array to string with leading 0's" do
    expect(@key_generator.key_padder([1])).to eq("00001")
    expect(@key_generator.key_padder([1, 2])).to eq("00012")
    expect(@key_generator.key_padder([1, 2, 3])).to eq("00123")
    expect(@key_generator.key_padder([1, 2, 3, 4])).to eq("01234")
    expect(@key_generator.key_padder([1, 2, 3, 4, 5])).to eq("12345")
  end

  it "can verify key length" do
    expect(@key_generator.verify_length("12345")).to be(true)
    expect(@key_generator.verify_length("123456")).to be(false)
    expect(@key_generator.verify_length("1234")).to be(false)
  end

 end
