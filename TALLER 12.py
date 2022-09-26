#El programa solicita base y altura y dibujar un rectangulo con *
valorbase = int(input("Ingresar base del rectangulo: "))
valoraltura = int(input("Ingresar altura del rectangulo: "))

for i in range(valoraltura):
    print()
    for i in range(valorbase):
        print("*",end="")

#El programa solicita lado y dibujar un triangulo con *

valorlado = int(input("Ingresar el lado del triangulo" ,))
valor= valorlado
for i in range (valorlado):
    print()
   
for i in range(valor):
    print("*",)
print