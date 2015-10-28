def game
	puts "Dime tu nombre"
	name = gets.chomp
	number_random = Random.rand(0..10)
	puts "Adivina el numero entre 0 y 10"
	number_user = gets.chomp.to_i
	intentos = 1
	total_intentos = 5

	
	while number_user != number_random

		if(intentos == total_intentos)
			break
		end

		if number_user < number_random
			puts "El numero es mayor. Vuelve a introducir un numero. Te quedan #{total_intentos - intentos}"
		else
			puts "El numero es menor. Vuelve a introducir un numero. Te quedan #{total_intentos - intentos}"
		end

		number_user = gets.chomp.to_i
		intentos += 1

	end

	if (intentos == total_intentos)
		puts "Oh!!! Has perdido, has sobrepasado el número de intentos"
	else
		puts "Bien #{name} has encontrado el número!! Es #{number_random} y lo has acertado en #{intentos}"
	end

end

game