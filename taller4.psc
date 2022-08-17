	Algoritmo taller4
		Definir contador como Entero
		Definir acumulado, dinero Como Real
		
		
		contador <- 0
		acumulado <- 0
		
		Repetir
			Escribir "Dame un numero de billetes "
			Leer dinero
			
			Si valor >= 0 Entonces
				acumulado <- acumulado + dinero
				contador <- contador + 1
			FinSi
		Hasta Que dinero < 0
		
		Definir suma Como Real
		suma <- acumulado 
		Escribir "Tu dinero es" , suma
		Escribir" Se recibieron: ", contador, "billetes"
FinAlgoritmo
