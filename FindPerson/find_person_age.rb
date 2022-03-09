# FILE = File.basename("/FindPerson")

file = File.open("Character.txt")

array = Array.new

file_data = file.readlines.map {|line| line.chomp}

puts "Введите возраст"

age = gets.chomp.to_i

flag = false
file_data.each.with_index do |elem, index|
  a = file_data[index].split

  if age == a[-1].to_i
    flag = true
    File.write("Text.txt",file_data[index]+"\n", mode: "a")
  end 

end

if !flag
  puts "такого возраста нет"
end

puts file_data.to_s