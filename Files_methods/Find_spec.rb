require 'rspec'
require './Find.rb'

FOR_TEST = File.basename("/Files_methods/for_tests.txt")

RSpec.describe "File methods" do

	let (:string) do
		<<-String
Jinx
Seraphine
Lux
Katarine
Seraphine
Sona
		String
	end

	before {File.write(FOR_TEST, string)}

	it 'method index' do
		expect{index}.to output(string).to_stdout
	end

	it 'search string by index' do
		id = 1
		expect(find(id)).to eq("Seraphine")
	end

	it 'search indexes by value' do
		name = 'Seraphine'
		expect(where(name)).to eq([1,4])
	end

	let (:string_upd) do
# 		<<-String
# Jinx
# Seraphine
# Timo
# Katarine
# Seraphine
# Sona
# 		String
		$string_upd = Array.new
		$string_upd = ["Jinx", "Seraphine", "Timo", "Katarine", "Seraphine", "Sona"]
	end

	before {File.write(FOR_TEST, string_upd)}

	it 'update' do
		id = 2
		name = "Timo"
		expect{update(id, name)}.to output(string_upd).to_stdout
	end

	
	
	
end