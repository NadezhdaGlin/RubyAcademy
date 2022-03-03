def whos_that_pokemon

	quantity = gets.chomp.to_i

	array = Array.new

	quantity.times do |i| puts "Введите через Enter имя и цвет покемона" 

		namepok = gets.chomp.to_s
		color = gets.chomp.to_s

		array << pokhash = {:"name" => "#{namepok}",:"color" => "#{color}"} 
	end

	"Вот твои введенные покемоны: #{array}"

end

puts "Сколько добавить покемонов?"

puts whos_that_pokemon