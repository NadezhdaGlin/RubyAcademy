require 'rspec'
require './pokemon.rb'

RSpec.describe "Pokemon" do
	it "return array with hash" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("2","Pikachu","Yellow","Mew","Pink")

		expect(whos_that_pokemon).to eq("Вот твои введенные покемоны: [{:name=>\"Pikachu\", :color=>\"Yellow\"}, {:name=>\"Mew\", :color=>\"Pink\"}]")
	end	

	it "return array with empty" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("")

		expect(whos_that_pokemon).to eq("Вот твои введенные покемоны: []")
	end	

	it "return array with 0" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("0")

		expect(whos_that_pokemon).to eq("Вот твои введенные покемоны: []")
	end	

	it "return array with empty values" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("1","","")

		expect(whos_that_pokemon).to eq("Вот твои введенные покемоны: [{:name=>\"\", :color=>\"\"}]")
	end	

end
