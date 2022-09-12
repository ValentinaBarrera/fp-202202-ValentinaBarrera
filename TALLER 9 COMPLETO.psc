Funcion edad <- calcularEdad(dia, mes, a�o, diaN, mesN, a�oN)
	
	Definir edad Como Entero
	
	edad <- a�o - a�oN
	
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

Funcion Old <- hallarmayor(a�o1, mes1, dia1, a�o2, mes2, dia2)
	Old <- 1
	Si a�o2<a�o1 Entonces
		Old<-2
	SiNo
		si a�o2 = a�o1
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
	Definir a�o, mes, dia, i, maxDias Como Entero
	Definir listA�osN, listaMesesN, listaDiasN, listaEdades Como Entero
	Dimension listA�osN(3)
	Dimension listaMesesN(3)
	Dimension listaDiasN(3)
	Dimension listaEdades(3)
	
	Escribir "A�o de referencia"
	Leer a�o
	mes<-validarDato("Mes de referencia", 1, 12)
	dia<-validarDato("Dia de referencia", 1, 31)
	
	i <- 0
	Para i <- 0 Hasta 2 Hacer
		Escribir "PERSONA NUMERO", i+1
		Escribir "A�o de nacimiento"
		Leer listA�osN[i]
		listaMesesN[i]<-validarDato("Mes de nacimiento", 1, 12)
		
		Segun listaMesesN[i] Hacer
			1,3,5,7,8,10,12:
				maxdias <- 31
			4,6,9,11:
				maxdias <- 30
			2:
				si listA�osN[i] % 400 = 0 o (listA�osN[i] % 4 = 0 y listA�osN[i] % 100 <> 0) 
					maxdias <- 29
				SiNo
					maxdias <- 28
					
				FinSi
		FinSegun
		
		listaDiasN[i]<-validarDato("Dia de nacimiento", 1, maxdias)
		
		
		listaEdades[i] <- calcularEdad(dia, mes, a�o, listaDiasN[i], listaMesesN[i], listA�osN[i])
	FinPara
		
	
	Escribir "la persona numero 1 tiene ", listaEdades[0] " a�os"
	Escribir "la persona numero 2 tiene ", listaEdades[1] " a�os"
	Escribir "la persona numero 3 tiene ", listaEdades[2] " a�os"
	
	Definir xy Como Entero

	Si hallarmayor(listA�osN[0],listaMesesN[0], listaDiasN[0], listA�osN[1], listaMesesN[1], listaDiasN[1]) = 1 y hallarmayor(listA�osN[0], listaMesesN[0], listaDiasN[0], listA�osN[2], listaMesesN[2], listaDiasN[2]) = 1  Entonces
		xy <- 1
	SiNo
		Si hallarmayor(listA�osN[1], listaMesesN[1], listaDiasN[1], listA�osN[2], listaMesesN[2], listaDiasN[2]) = 1 Entonces
			xy <- 2
		SiNo
			xy <- 3
		FinSi
	Fin Si
	
	Escribir "la persona mayor es la n�mero es ", xy
	
	
	
FinAlgoritmo
