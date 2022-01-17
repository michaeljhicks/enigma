require_relative 'spec_helper'
require './lib/cipher'

 RSpec.describe Cipher do
 	before(:each) do
 		@cipher = Cipher.new
 	end

 	it 'exists' do
 		expect(@cipher).to be_a(Cipher)
 	end

 	it 'has attributes' do
    expected = ["a", "b", "c", "d", "e", "f",
      "g", "h", "i", "j", "k", "l", "m", "n",
      "o", "p", "q", "r", "s", "t", "u", "v",
      "w", "x", "y", "z", " "]
 		expect(@cipher.alphabet).to eq(expected)
 		expect(@cipher.default_key).to be_a(String)
    expect(@cipher.default_key.length).to eq(5)
 		expect(@cipher.default_date).to eq("170122")
 	end

  it "can create a default date" do
    expect(@cipher.create_date).to be_a(String)
    expect(@cipher.create_date.length).to eq(6)
  end

  it "can generate a random 5 digit key" do
    expect(@cipher.calculate_random_key).to be_a(String)
    expect(@cipher.calculate_random_key.to_s.length).to eq(5)
  end

 end
