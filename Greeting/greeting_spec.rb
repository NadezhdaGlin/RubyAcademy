require 'rspec'
require './greeting.rb'


RSpec.describe "Greeting" do

	it "return age over 18" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', "21")

		expect(greeting).to eq("Привет,Glinova Nadezhda.Самое время заняться делом!")
	end

	it "return under the age of 18" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', "12")

		expect(greeting).to eq("Привет,Glinova Nadezhda.Тебе меньше 18, но начать учиться программировать никогда не рано!")
	end

	it "return age equal to 18" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', "18")

		expect(greeting).to eq("Привет,Glinova Nadezhda.Самое время заняться делом!")
	end

	it "return age equal to 0" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', "0")

		expect(greeting).to eq("Введите другой возраст")
	end

	it "return text age" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', 'twenty')

		expect(greeting).to eq("Введите другой возраст")
	end

	it "return negative age" do
		allow_any_instance_of(Kernel).to receive(:gets).and_return('Nadezhda','Glinova', "-21")

		expect(greeting).to eq("Введите другой возраст")
	end
end
