from random import randint 

def adivina_el_numero():
    print ("Adivina el numero generado por la computadora")
    
    numero_aleatorio = randint(1, 10)
    jugar(numero_aleatorio)

def jugar(numero_aleatorio):
    prediccion = True
    while prediccion!=numero_aleatorio:
        try:
            numero = int(input("Ingrese un numero entre 1 y 10: "))
        except ValueError:
            print ("El valor ingresado no es un numero")
            continue
        if numero == numero_aleatorio:
            prediccion = True
            print (f"El valor correcto es {numero}, has acertado")
            break
        else:
            prediccion = False
            print ("El numero es incorrecto")
        
        
adivina_el_numero() 