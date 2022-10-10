from math import factorial


def validarnumero(texto, valorminimo, valormaximo):
    valor = int(input(texto))
    while valor < valorminimo or valor > valormaximo:
        print("valor incorrecto")
        valor = int(input(texto))

    return valor

    def factorial(numero):
        rta = 1
        for i in range(1, numero+1):
            rta *=i

        return rta


#programa principal
n = validarnumero("¿Cuantos compañeros de curso tiene la hermana de Martha? ", 1 ,30)
r = validarnumero("¿Cuantos seran invitados? ", 0 , n)

respuesta = factorial(n) / (factorial(r)* factorial(n-r))
print(respuesta)
