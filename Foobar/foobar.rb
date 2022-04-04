def foobar
	firstnum = gets.chomp.to_f
	secondnum = gets.chomp.to_f

	if firstnum == 20
		"так как первое число равно 20, вывожу второе значение: #{secondnum}"
	elsif secondnum == 20 
		"так как второе число равно 20, вывожу первое значение: #{firstnum}"
	else sum = firstnum + secondnum
		"сумма двух чисел равна #{sum}"
	end
end

