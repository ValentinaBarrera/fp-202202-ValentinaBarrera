Funcion edad <- calcularEdad(dia, mes, año, diaN, mesN, añoN)
	
	Definir edad Como Entero
	
	edad <- año - añoN
	
	Si mesN > mes Entonces
		edad <- edad -1
	FinSi
	
	Si mesN = mes Entonces
		Si diaN > dia Entonces
			edad <- edad-1
		FinSi
	FinSi
FinFuncion


Funcion respuesta<-validarDato(etiqueta, minimo, maximo)
	Escribir etiqueta
	Leer respuesta
	Mientras respuesta<minimo o respuesta>maximo Hacer
		Escribir "Valor incorrecto"
		Escribir etiqueta
		Leer respuesta
	Fin Mientras
FinFuncion

Funcion Old <- hallarmayor(año1, mes1, dia1, año2, mes2, dia2)
	Old <- 1
	Si año2<año1 Entonces
		Old<-2
	SiNo
		si año2 = año1
			si mes2 < mes1
			Old<-2
		FinSi
	    SiNo
			Si mes2=mes1 y dia2<dia1
				Old <-2
			FinSi
		FinSi
	Fin Si
FinFuncion

	
Algoritmo calculo_edades
	Definir listaDias Como Numerica
	Definir año, mes, dia, i, maxDias Como Entero
	Definir listAñosN, listaMesesN, listaDiasN, listaEdades Como Entero
	Dimension listAñosN(3)
	Dimension listaMesesN(3)
	Dimension listaDiasN(3)
	Dimension listaEdades(3)
	
	Escribir "Año de referencia"
	Leer año
	mes<-validarDato("Mes de referencia", 1, 12)
	dia<-validarDato("Dia de referencia", 1, 31)
	
	i <- 0
	Para i <- 0 Hasta 2 Hacer
		Escribir "PERSONA NUMERO", i+1
		Escribir "Año de nacimiento"
		Leer listAñosN[i]
		listaMesesN[i]<-validarDato("Mes de nacimiento", 1, 12)
		
		Segun listaMesesN[i] Hacer
			1,3,5,7,8,10,12:
				maxdias <- 31
			4,6,9,11:
				maxdias <- 30
			2:
				si listAñosN[i] % 400 = 0 o (listAñosN[i] % 4 = 0 y listAñosN[i] % 100 <> 0) 
					maxdias <- 29
				SiNo
					maxdias <- 28
					
				FinSi
		FinSegun
		
		listaDiasN[i]<-validarDato("Dia de nacimiento", 1, maxdias)
		
		
		listaEdades[i] <- calcularEdad(dia, mes, año, listaDiasN[i], listaMesesN[i], listAñosN[i])
	FinPara
		
	
	Escribir "la persona numero 1 tiene ", listaEdades[0] " años"
	Escribir "la persona numero 2 tiene ", listaEdades[1] " años"
	Escribir "la persona numero 3 tiene ", listaEdades[2] " años"
	
	Definir xy Como Entero

	Si hallarmayor(listAñosN[0],listaMesesN[0], listaDiasN[0], listAñosN[1], listaMesesN[1], listaDiasN[1]) = 1 y hallarmayor(listAñosN[0], listaMesesN[0], listaDiasN[0], listAñosN[2], listaMesesN[2], listaDiasN[2]) = 1  Entonces
		xy <- 1
	SiNo
		Si hallarmayor(listAñosN[1], listaMesesN[1], listaDiasN[1], listAñosN[2], listaMesesN[2], listaDiasN[2]) = 1 Entonces
			xy <- 2
		SiNo
			xy <- 3
		FinSi
	Fin Si
	
	Escribir "la persona mayor es la número es ", xy
	
	
	
FinAlgoritmo
