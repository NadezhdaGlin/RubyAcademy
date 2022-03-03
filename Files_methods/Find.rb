# require ''
FILE = File.basename("/Files_methods/Characters.txt")
BUF = File.basename("/Files_methods/Update_Characters.txt")
DEL = File.basename("/Files_methods/Delete_Characters.txt")

def index
	File.foreach(FILE){|i| puts i}
end

def find(id)
	File.foreach(FILE).with_index do |character, index|
		@character = character.chomp if index == id
	end
		@character
end

def where(name)

	array = Array.new

	File.foreach(FILE).with_index do |character, index|
		array << index if character.include?(name)
 	end
		array
 end

 def update(id, name)

 	array = Array.new

 	File.foreach(FILE).with_index do |character, index|
 		 array << (index == id ? name.chomp : character.chomp)
 	end

 	# File.write(BUF, array.join("\n"))

 end

def delete(id)

	array = Array.new

	file = File.open("Characters.txt")

	file_data = file.readlines.map { |character| character.chomp }
	
	file_data.each.with_index do |character, index|
		index==id ? file_data.delete_at(index) : character.chomp
	end

	file.close
	File.write(DEL, file_data.join("\n"))

end

# puts index
# puts find(1)
puts where("Seraphine")
# update(2, "Umi")
# puts delete(2)

