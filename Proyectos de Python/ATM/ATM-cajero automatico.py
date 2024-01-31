"""
Trabajo Practico Integrador 

diseñar un programa que emule el funcionamiento de un  atm ( máquina de cajero automático )

1 - funcionalidad: 
	a - Debe proporcionar menú con opciones para operaciones permitidas o disponibles 
	b - para mostrar el menú debe pedir usuario y contraseña 
	c - cada cliente cuenta con un saldo inicial de 10000 pesos 
	d - se puede ingresar dinero en ese caso se descuenta del cliente logueado 
	e - se puede retirar dinero, en ese caso se utiliza el saldo de la cuenta 
	f - debe permitir desloguearse y loguearse otro cliente mediante la gestión de la cuenta
	g - se debe poder pedir un préstamo al banco. En ese caso se supone un máximo permitido 
        para cada cliente 
	h - mediante la libreta time se debe establecer el tiempo individualidad en el cual 
        se desloguea el sistema quedando a la espera de un nuevo usuario y contraseña 
	i - se puede cambiar se puede cambiar la contraseña de cada cliente 
	j - se debe poder operar un cliente pero esta operación SOLO la puede realizar el cliente administrador 
	k - se puede agregar mejorar o funcionas siendo las presentadas obligatorias 
"""
from os import system as sys
import time


clientes = {"franco": {"contraseña" : "admin", "saldo" : 10000, "prestamo" : 20000, "bolsillo":0}, 
            "administrador" : {"contraseña" : "admin", "saldo" : 10000, "prestamo" : 20000, "bolsillo":0},
            "lucas": {"contraseña" : "admin", "saldo" : 10000, "prestamo" : 20000, "bolsillo":0} } 

def mejormensaje(msj):
    sys("cls")
    print (msj)
    time.sleep(3)
    sys("cls")

def ingresar_dinero(cliente):
    sys("cls")
    
    ingreso = int(input('cuanto desea ingresar?: '))
    if ingreso > 0 and clientes[cliente]["bolsillo"] - ingreso>0:
        clientes[cliente]["bolsillo"] -= ingreso
        clientes[cliente]["saldo"]+=ingreso
        mejormensaje('ingreso exitoso')
        
    else: 
        mejormensaje("no tienes suficiente dinero para ingresar")
        
        

def retirar_dinero(cliente):
    sys("cls")
    print('cuanto desea retirar?: ')
    retiro = int(input('monto: '))
    if retiro >= 0 and clientes[cliente]["saldo"] - retiro<0:
        clientes[cliente]["saldo"] -= retiro
        clientes[cliente]["bolsillo"] += retiro
        mejormensaje('retiro exitoso')
    else:
        mejormensaje("no tienes suficiente saldo para retirar")
        
        
def predir_prestamo(cliente):
    sys("cls")
    
    print('ingrese un monto para el prestamo: ')
    presta = int(input('monto: '))
    if presta >= 0 and clientes[cliente]["prestamo"] - presta<0:
        clientes[cliente]["prestamo"] -= presta
        clientes[cliente]["saldo"] +=presta
        mejormensaje("prestamo exitoso")
    else:
        mejormensaje("prestamo rechazado")
    
def Cambiar_contraseña(cliente):
    sys('cls')
    contrasena = input("ingrese antigua contraseña: ")
    if contrasena == clientes[cliente]["contraseña"]:
        nc1 = input(" ingrese nueva contraseña: ")
        nc2 = input(" ingrese nuevamente: ")
        if nc1 == nc2:
            clientes[cliente]["contraseña"] = nc1
            mejormensaje('cambio de contraseña exitoso')
        else:
            mejormensaje('no coinsiden la contraseña')
    else:
        mejormensaje('contraseña invalida')
        return 
                  

def menu(cliente):
    sys("cls")
    while True:
        
        print (Mostras_menu())
        opc = input("opcion: ")
        if opc == "1":
            ingresar_dinero(cliente)
        elif opc == "2":
            retirar_dinero(cliente)
        elif opc == "3": 
            predir_prestamo(cliente)
        elif opc == "4":
            Cambiar_contraseña(cliente)
            
        elif opc == "5":
            mostrar_saldos(cliente)
        elif opc == "0":
            mejormensaje("Salindo del sistema que tenga un buen dia")
            break
        else:
            mejormensaje(" no corresponde a una opcion")
        
        

def Mostras_menu():
    print ("""
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
bienvenido 

1 . ingresar dinero
2 . retirar dinero
3 . pedir un prestamo al banco
4 . cambiar contraseña
5 . mostrar saldo
0 . salir 


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++        
           """)
    
def mostrar_saldos(cliente):
    sys("cls")
    print ("saldo en cuanta: ")
    print (clientes[cliente]["saldo"])
    time.sleep(3)
    sys("cls")
    

def login():
    sys("cls")
    while True:
        print("""
Bienvenido al sistema de pagos de la red LINK
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

              """)
        cliente = input ("Usuario: ")
        if cliente in clientes:
            contrasena = input("Contraseña: ")
            if contrasena == clientes [cliente]["contraseña"]:
                if cliente == 'administrador':
                    cliente = input("ingrese cliente a admistrar: ")
                menu(cliente)
            else:
                sys("cls")
                print ("contraseña invalida")
                time.sleep(3)
        else:
            mejormensaje("no existe "+cliente+" en la base de datos del sistema")
            
            
sys("cls")
login()

