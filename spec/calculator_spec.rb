require './lib/calculator'
require_relative './spec_helper'

RSpec.describe Calculator do
	let(:calculator) {Calculator.new}

	it 'exists' do
		expect(calculator).to be_a(Calculator)
	end

	it 'has attributes' do

		expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
			"m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y",
			"z", " "]

		expect(calculator.alphabet).to eq(expected)
		expect(calculator.alphabet).to be_a(Array)
		expect(calculator.alphabet.count).to_not eq(26)
		expect(calculator.alphabet.count).to_not eq(28)
		expect(calculator.alphabet.count).to eq(27)
		expect(calculator.alphabet.sample.class).to eq(String)
	end

end
