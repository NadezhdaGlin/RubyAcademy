require 'rspec'
require './ending_word.rb'

RSpec.describe "Searching two last symbol'cs'" do

	it "returns a word with an ending 'CS'" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("iconiCS")

		expect(word_ending_check).to eq(128)
	end

	it "returns word without an ending 'CS'" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("slovo")

		expect(word_ending_check).to eq("ovols")
	end

	it "returns word with an ending small 'cs'" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("iconics")

		expect(word_ending_check).to eq("scinoci")
	end


	it "returns word with spaces at the end" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("   geombinatoriCS      ")

		expect(word_ending_check).to eq(16384)	
	end

	it "returns not word" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("0")

		expect(word_ending_check).to eq("0")
	end

	it "returns 'CS' im middle" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("froCSog")

		expect(word_ending_check).to eq("goSCorf")
	end

	it "returns word with a number in front" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("-1CS")

		expect(word_ending_check).to eq(16)	
	end
end

