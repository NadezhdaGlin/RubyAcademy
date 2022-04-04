require 'rspec'
require './foobar.rb'

RSpec.describe "Foobar" do
	it "return first number equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("20","4")

		expect(foobar).to eq("так как первое число равно 20, вывожу второе значение: 4.0")
	end 

	it "return second number equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("2","20")

		expect(foobar).to eq("так как второе число равно 20, вывожу первое значение: 2.0")
	end 

	it "return sum of two numbers not equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("3","10")

		expect(foobar).to eq("сумма двух чисел равна 13.0")
	end

	it "return sum of one negative numbers not equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("-5","10")

		expect(foobar).to eq("сумма двух чисел равна 5.0")
	end

	it "return sum of one negative numbers not equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("7","-30")

		expect(foobar).to eq("сумма двух чисел равна -23.0")
	end


	it "return sum of two negative numbers not equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("-30","-2")

		expect(foobar).to eq("сумма двух чисел равна -32.0")
	end 

	it "return sum of two text numbers not equal to 20" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return("dva","odin")

		expect(foobar).to eq("сумма двух чисел равна 0.0")
	end 

end

