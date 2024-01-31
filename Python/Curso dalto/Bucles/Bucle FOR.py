lista = ['perro', 'gato', 'loro', 'caballo']

numeros = [ 9 , 3, 2, 1]

# recorriendo la linta animales
for i in lista:
    print(f'estoy dentro de una la lista animal llamando a {i}')
    
    
# recorriendo la linta numeros

for i in numeros:
    print(f'estoy dentro de una la lista numeros llamando a {i}')
    
    
# recorriendo la dos listas

for i in lista:
    for j in numeros:
        print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')


# recorriendo la con zip 

for i, j in zip(lista, numeros):
    print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')
    

# recorriendo lista con enumerate

for i, j in enumerate(lista):
    print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')
    
# recorriendo la con enumerate y zip

for i, j in zip(enumerate(lista), enumerate(numeros)):
    print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')
    
# recorriendo la con range y length

for i in range(len(lista)):
    print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')
    
    
# terminando una lista con else

for i in range(len(lista)):
    print(f'estoy dentro de una la lista animal llamando a {i} y dentro de otra la lista numeros llamando a {j}')
else:
    print(f'el bucle termino')
    