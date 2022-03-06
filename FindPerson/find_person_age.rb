# FILE = File.basename("/FindPerson")

file = File.open("Character.txt")

array = Array.new

file_data = file.readlines.map {|line| line.chomp}

puts "Введите возраст"

age = gets.chomp.to_i

flag = false
file_data.each.with_index do |elem, index| 
  a = file_data[index].split
  smth = a.each.map { |el| el}
# puts smth.to_s

if age == smth[-1].to_i
  flag = true
  # File.write("Text.txt",file_data[index], mode: "a")
  puts "хорошо"
else
  puts "плохо"
end 

end


# puts array.to_s

puts file_data.to_s