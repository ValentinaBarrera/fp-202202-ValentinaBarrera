Algoritmo trabajoacademia
	Definir cantidad, i, maxdias Como Entero
	cantidad <- 1
	Dimension arreglo(cantidad)
	
	Escribir "�Cu�ntas personas se registrar�n?"
	Leer cantidad
	
	Definir listanombres Como Caracter
	Dimension listanombres[cantidad]
	
	Definir listaapellidos Como Caracter
	Dimension listaapellidos[cantidad]
	
	Definir  listaa�os Como Entero
	Dimension listaa�os[cantidad]
	
	Definir  listameses Como Entero
	Dimension listameses[cantidad]
	
	
	Definir  listadias Como Entero
	Dimension listadias[cantidad]
	
	Para i <- 0 Hasta cantidad-1 Hacer
		
		Escribir " Escribe el primer nombre"
		Leer listanombres[i]
		
		Escribir "Escribe el primer apellido"
		Leer listaapellidos[i]
		
		Repetir
			Escribir "a�o de nacimiento"
			Leer listaa�os[i]
		Hasta Que listaa�os[i] > 1900 y listaa�os[i] < 2022
		
		Repetir
			Escribir " mes de nacimiento"
			Leer listameses[i]
		Hasta Que listameses[i] >=1 y listamese <=12
		
		Segun listameses [i] Hacer
			1,3,5,7,8,10,12:
				maxdias = 31
			4,6,9,11:
				maxdias = 30
			2:
				si lista�os[i] % 400 = 0 o (listaa�os[i] % 4 = 0 y listaa�os[i] % 100 <> 0) Entonces
					maxdias = 29
				SiNo
					maxdias = 28
					
				FinSi
				
				Repetir 
					Escribir "Dia de nacimiento"
					Leer listadias[i]
				Hasta Que listadias[i] >= 1 y listadias[i] <= maxdias
		FinSegun
	FinPara
	
	Para i <- 0 Hasta cantidad -1 Hacer
		Escribir listanombres[i]," ", listaapellidos[i], " - " listadias[i], "/", listameses[i],"/", listaa�os[i]
		
	FinPara
FinAlgoritmo
