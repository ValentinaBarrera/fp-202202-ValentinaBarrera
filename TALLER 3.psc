Algoritmo taller 3
	Definir año, mes, resultado Como Real
		
	//Solicito los numeros
	Escribir "Dame el numero de año:"
	Leer año
	Escribir "Dame el numero de mes:"
	Leer mes 
	
	//Se realiza la operacion seleccionada
	Segun mes Hacer
    1,3,5,7,8,10,12: 
	resultado = 31
			
	2:
		Si año % 4 = 0 Entonces
			si año % 100 = 0 Entonces
				Si año % 400 = 0 Entonces
					ndias = 29
				SiNo
					ndias = 28 
				FinSi
			SiNo
				ndias= 29
			FinSi
		SiNo
			ndias=28
		FinSi
		
		4,6,9,11:
			ndias=30
			
			
		De Otro Modo:
			Escribir " Es incorrecto:" 
			
			
	FinSegun
	Escribir " El numero de dias es: " ndias
	
FinAlgoritmo
