agenda = {}  # Diccionario para almacenar los contactos

def agregar_contacto():
    nombre = input("Ingrese el nombre: ")
    apellido = input("Ingrese el apellido: ")
    telefono = input("Ingrese el número de teléfono: ")
    empresa = input("Ingrese el nombre de la empresa: ")
    contacto = {"Apellido": apellido, "Teléfono": telefono, "Empresa": empresa}
    agenda[nombre] = contacto
    print(f"{nombre} ha sido agregado a la agenda.")

def borrar_contacto():
    nombre = input("Ingrese el nombre del contacto que desea borrar: ")
    if nombre in agenda:
        del agenda[nombre]
        print(f"{nombre} ha sido eliminado de la agenda.")
    else:
        print(f"{nombre} no se encuentra en la agenda.")

def editar_contacto():
    nombre = input("Ingrese el nombre del contacto que desea editar: ")
    if nombre in agenda:
        contacto = agenda[nombre]
        print(f"Ingrese los nuevos datos para {nombre}. Deje en blanco para mantener los datos anteriores.")
        apellido = input(f"Apellido ({contacto['Apellido']}): ")
        telefono = input(f"Teléfono ({contacto['Teléfono']}): ")
        empresa = input(f"Empresa ({contacto['Empresa']}): ")
        if apellido:
            contacto['Apellido'] = apellido
        if telefono:
            contacto['Teléfono'] = telefono
        if empresa:
            contacto['Empresa'] = empresa
        print(f"{nombre} ha sido actualizado en la agenda.")
    else:
        print(f"{nombre} no se encuentra en la agenda.")

def visualizar_agenda():
    if not agenda:
        print("La agenda está vacía.")
    else:
        print("Contactos en la agenda:")
        for nombre, contacto in agenda.items():
            print(f"{nombre}: {contacto['Apellido']}, {contacto['Teléfono']}, {contacto['Empresa']}")

while True:
    print("\nSeleccione una opción:")
    print("1. Agregar contacto")
    print("2. Borrar contacto")
    print("3. Editar contacto")
    print("4. Visualizar agenda")
    print("5. Salir")

    opcion = input("Ingrese el número de opción: ")
    if opcion == "1":
        agregar_contacto()
    elif opcion == "2":
        borrar_contacto()
    elif opcion == "3":
        editar_contacto()
    elif opcion == "4":
        visualizar_agenda()
    elif opcion == "5":
        break
    else:
        print("Opción inválida. Por favor, seleccione una opción válida.")
