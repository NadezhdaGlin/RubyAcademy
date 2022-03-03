def word_ending_check

	word = gets.chomp.to_s.strip
	
	arr = "#{word}".split(//)

	if arr[-2..-1] == ["C","S"] 
		2**("#{word}".length)
	else "#{word}".reverse
	end

end

puts "Введите слово"

puts word_ending_check