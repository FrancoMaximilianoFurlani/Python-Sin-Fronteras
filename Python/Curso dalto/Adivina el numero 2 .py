from random import randint
import os
os.system('cls')

def main():
    limite_inferior = 1
    try:
        limite_superior = int(input('ingrese un numero para el limite superior: '))
    except ValueError:
        print('ingrese un numero entero')
    print(f"""================================================

adivina numero entre 1 y {limite_superior}
        
================================================
          """)
    numero_oculto = randint(1,limite_superior)
    prediccion(numero_oculto)
    


def prediccion(numero_oculto):
    numero =True
    while numero_oculto != numero:
        numero = int(input('ingrese un numero: '))
        if numero >numero_oculto:
            print("es un numero muy alto")
        elif numero <numero_oculto:
            print("es un numero muy bajo")
        else :
            print("es un numero correcto")
            

main()