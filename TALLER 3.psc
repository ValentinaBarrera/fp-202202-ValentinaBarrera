Algoritmo taller 3
	Definir a�o, mes, resultado Como Real
		
	//Solicito los numeros
	Escribir "Dame el numero de a�o:"
	Leer a�o
	Escribir "Dame el numero de mes:"
	Leer mes 
	
	//Se realiza la operacion seleccionada
	Segun mes Hacer
    1,3,5,7,8,10,12: 
	resultado = 31
			
	2:
		Si a�o % 4 = 0 Entonces
			si a�o % 100 = 0 Entonces
				Si a�o % 400 = 0 Entonces
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
