file = File.open("Character.txt")
res_file = File.open("result.txt")

array = Array.new

file_data = file.readlines.map {|line| line.chomp}
result_data = res_file.readlines.map {|line| line.chomp}

if result_data.length == file_data.length 
  res_file = File.open('result.txt', 'r'){ |str| puts str.read }
else
  puts "Введите возраст или -1 для выхода"
  age = gets.chomp.to_i
  # if age == -1 
  #   res_file = File.open('result.txt', 'r'){ |str| puts str.read }
  #   break
  # end
  flag = false
  flag2 = false

  file_data.each.with_index do |elem, index|
    sep_el = file_data[index].split
      if age == sep_el[-1].to_i
        flag = true
        if result_data.include?(file_data[index])
          flag2 = true
          else
          File.write("result.txt",file_data[index]+"\n", mode: "a")
        end
      end
  end
      if !flag
        puts "такого возраста нет"
      end
end

# puts file_data.to_s