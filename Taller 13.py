import random

#Este programa solicita nombres hasta que se entregue un vacio
listaNombres = ["Feisar"]
nombre = "Inicio"
while nombre != "":
    nombre = input("Dame un nombre: ")
    if nombre !="":
        listaNombres.append(nombre)
    else:
        print("No se solicitarán más nombres")

print("La lista ordenada es:", listaNombres)

#Se ordena la lista
listaNombres.sort()

#Se selecciona un nombre al azar
ganador = random.choice(listaNombres)
print("La persona ganadora es", ganador)