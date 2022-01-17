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
 end
