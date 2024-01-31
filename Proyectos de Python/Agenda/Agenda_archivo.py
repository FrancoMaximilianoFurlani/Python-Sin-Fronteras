import os

# Función para mostrar el menú de opciones
def mostrar_menu():
    print("\nMENU DE OPCIONES")
    print("1. Cargar nuevo contacto")
    print("2. Borrar contacto")
    print("3. Editar contacto")
    print("4. Visualizar agenda")
    print("5. Salir")

# Función para cargar un nuevo contacto
def cargar_contacto():
    nombre = input("Introduce el nombre del nuevo contacto: ")
    apellido = input("Introduce el apellido del nuevo contacto: ")
    numero = input("Introduce el número telefónico del nuevo contacto: ")
    contacto = f"{nombre} {apellido}, {numero}"
    with open("agenda.txt", "a") as archivo:
        archivo.write(contacto + "\n")
    print("Contacto guardado con éxito.")

# Función para borrar un contacto
def borrar_contacto():
    nombre = input("Introduce el nombre del contacto que deseas borrar: ")
    with open("agenda.txt", "r") as archivo:
        lineas = archivo.readlines()
    with open("agenda.txt", "w") as archivo:
        for linea in lineas:
            if not nombre in linea:
                archivo.write(linea)
    print("Contacto eliminado con éxito.")

# Función para editar un contacto
def editar_contacto():
    nombre = input("Introduce el nombre del contacto que deseas editar: ")
    nuevo_nombre = input("Introduce el nuevo nombre del contacto: ")
    nuevo_apellido = input("Introduce el nuevo apellido del contacto: ")
    nuevo_numero = input("Introduce el nuevo número telefónico del contacto: ")
    nuevo_contacto = f"{nuevo_nombre} {nuevo_apellido}, {nuevo_numero}"
    with open("agenda.txt", "r") as archivo:
        lineas = archivo.readlines()
    with open("agenda.txt", "w") as archivo:
        for linea in lineas:
            if nombre in linea:
                archivo.write(nuevo_contacto + "\n")
            else:
                archivo.write(linea)
    print("Contacto editado con éxito.")

# Función para visualizar la agenda
def visualizar_agenda():
    with open("agenda.txt", "r") as archivo:
        print("AGENDA:")
        print(archivo.read())

# Programa principal
while True:
    mostrar_menu()
    opcion = input("\nElige una opción (1-5): ")
    if opcion == "1":
        cargar_contacto()
    elif opcion == "2":
        borrar_contacto()
    elif opcion == "3":
        editar_contacto()
    elif opcion == "4":
        visualizar_agenda()
    elif opcion == "5":
        print("Saliendo del programa...")
        break
    else:
        print("Opción inválida.")
    
