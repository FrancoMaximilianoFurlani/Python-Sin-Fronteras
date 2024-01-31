# las listas se pueden modificar
lista = ['mama','papa', True, 1, 1.5]

print(lista[1])

lista[1] = "Hermanita"
print(lista[1])
# las tuplas no se pueden modificar
tupla = ('mama','papa', True, 1, 1.5)

print(tupla[2])

# creando un diccionario 
# la estructura es key : value
diccionario = {
    'nombre': 'satouru goyo',
    'habilidad' : 'infinito',
    'alcance': 99999
}

print(diccionario['nombre'])
