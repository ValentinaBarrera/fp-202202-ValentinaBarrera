from ast import If


cantCripto = 50
cantDolares = 500
numDia = 1

while cantCripto > 0:
    print("DÍA", numDia)
    valorCripto = float(input("Valor de la criptomoneda hoy: "))

    if valorCripto >= 80:
        #Se venden todas
        cantDolares += cantCripto * valorCripto
        cantCripto = 0
        break #Termina el while sin validar condicion
    elif valorCripto >= 30 and valorCripto < 80:
        #Se venden 25 criptomonedas
        if cantCripto >= 25:
            cantDolares += valorCripto * 25
            cantCripto -= 25
        else: #Se tienen menos de 25 criptomonedas
            cantDolares += cantCripto * valorCripto
            cantCripto = 0
    elif valorCripto <= 20:
        #Se compran 50 criptomonedas
        if cantDolares >= 50 * valorCripto:
            cantDolares -= 50 * valorCripto
            cantCripto += 50
        else: #No se tiene suficiente dinero
            cantidadCompra = cantDolares / valorCripto
            cantDolares = 0
            cantCripto += cantidadCompra 

    print("cantidad de dólares:", cantDolares)
    print("cantidad de criptomonedas:", str(cantCripto))
    numDia += 1