print("Este programa solcita un numero entero.")
print("Determina si es positivo, negativo o cero.")
print("Si es positivo, determina si es par o impar.")

numero = int(input("Dame un numero: "))

if numero > 0:
    print("El numero es positivo")

    #Ahora se deteremina si el numero es par o impar
    if numero % 2 == 0:
        print("El numero es par")
    else: 
        print ("El numero es impar")
elif numero == 0:
        print("El numero es cero")
elif numero < 0:
        print("El numero es negativo")
else:
        print("Esto nunca pasará")