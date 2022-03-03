def greeting

	username = gets.chomp
	surname = gets.chomp
	age = gets.chomp.to_i

	if age > 0
		age >= 18 ? "Привет,#{surname} #{username}.Самое время заняться делом!" : 
	"Привет,#{surname} #{username}.Тебе меньше 18, но начать учиться программировать никогда не рано!"
	else 
		"Введите другой возраст"
	end

end

puts "Введите ваше имя, фамилию и возраст"

puts greeting



