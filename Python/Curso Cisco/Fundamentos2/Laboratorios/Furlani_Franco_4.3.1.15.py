def contar_letras(file_name):
    # Inicializar el diccionario de recuentos
    recuentos = {}

    # Abrir el archivo en modo lectura
    with open(file_name, 'r') as file:
        # Leer el contenido del archivo
        contenido = file.read()

        # Convertir el contenido a minúsculas para tratar las letras mayúsculas y minúsculas como iguales
        contenido = contenido.lower()

        # Iterar sobre cada carácter en el contenido
        for caracter in contenido:
            # Verificar si el carácter es una letra latina
            if caracter.isalpha() and caracter.isascii():
                # Incrementar el contador para esa letra en el diccionario
                recuentos[caracter] = recuentos.get(caracter, 0) + 1

    # Ordenar el diccionario por las claves (letras) en orden alfabético
    recuentos_ordenados = sorted(recuentos.items())

    # Imprimir el histograma
    for letra, recuento in recuentos_ordenados:
        print(letra, "->", recuento)


# Pedir al usuario el nombre del archivo de entrada
nombre_archivo = input("Ingrese el nombre del archivo de entrada: ")

# Llamar a la función para contar las letras
contar_letras(nombre_archivo)
