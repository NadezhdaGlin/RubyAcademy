# frozen_string_literal: true
def ATM(balance)
	current_balance = balance
	loop do
	  puts "Введите:
		D для взноса денег
		W для снятия денег
		B для проверки баланса
		Q для выхода"

	  input = gets.chomp.to_s.upcase

	  if input == 'Q'
	  	File.write('balance.txt', current_balance.to_f.floor(2), mode: 'w')
	    puts "Текущий баланс: #{current_balance.to_f.floor(2)}"
	    break

	  else
	    case input
	    when 'D'

	      puts "Текущий баланс: #{current_balance.to_f.floor(2)}"
	      print 'Введите сумму '

	      inp_sum = gets.chomp.to_f

	      if inp_sum.positive?

	        current_balance = current_balance.to_f + inp_sum
	        puts "Текущий баланс: #{current_balance.to_f.floor(2)}"

	      else
	        puts 'некорректные данные'
	      end

	    when 'W'

	      puts "Текущий баланс: #{current_balance.to_f.floor(2)}"
	      print 'Введите сумму,которую хотите снять '

	      withdraw_m = gets.chomp.to_f

	      if withdraw_m.positive? && withdraw_m <= current_balance.to_f

	        current_balance = current_balance.to_f - withdraw_m
	        puts "Текущий баланс: #{current_balance.to_f.floor(2)}"

	      elsif withdraw_m > current_balance.to_f
	        puts 'введенная сумма не должна превышать баланс'
	      elsif withdraw_m.negative?
	        puts 'сумма не может быть отрицательной'
	      else
	      	puts "некорректные данные"
	      end

	    when 'B'
	      puts "Текущий баланс составляет: #{current_balance.to_f.floor(2)}"
	    else
	      puts 'такой команды нет'
	    end
	  end
	end
end

flag = false
if File.exist?('balance.txt')
	flag = true
	balance = File.read('balance.txt')
	ATM(balance)
else !flag
	BALANCE = 100.0
	ATM(BALANCE)
end

