Algoritmo cicloPara
	Definir nota, acumulador, promedio Como Real
	Definir i Como Entero
	
	
	Escribir " ¿Cuántas notas vas a resgistrar?"
	Leer cantidad
	
	acumulador <- 0
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Nota número ", i, ":"
		Leer nota
		
		
		acumulador <- acumulador + nota
	Fin Para
	
	promedio <- acumulador / cantidad
	Escribir "El promedio de las notas es", promedio
FinAlgoritmo
