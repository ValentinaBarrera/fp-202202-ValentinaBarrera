Algoritmo cicloPara
	Definir nota, acumulador, promedio Como Real
	Definir i Como Entero
	
	
	Escribir " �Cu�ntas notas vas a resgistrar?"
	Leer cantidad
	
	acumulador <- 0
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Nota n�mero ", i, ":"
		Leer nota
		
		
		acumulador <- acumulador + nota
	Fin Para
	
	promedio <- acumulador / cantidad
	Escribir "El promedio de las notas es", promedio
FinAlgoritmo
