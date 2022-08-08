Algoritmo    numayor
	Definir a, b, c como Entero
	Escribir "Dame el primer numero"
	Leer a
	Escribir "Dame el segundo numero"
	Leer b
	Escribir "Dame el tercer numero"
	Leer c
	Si a>b y a>c Entonces
		
		Escribir "El numero mayor es:", a
		
	SiNo
	
		Si b>c Entonces
			
			Escribir "El numero mayor es:", b
		
			SiNo
				Escribir"El numero mayor es:", c
			Fin Si
	Fin Si
	
FinAlgoritmo
