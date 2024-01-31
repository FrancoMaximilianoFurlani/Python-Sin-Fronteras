lista1 = ['a', 'b', 'c', 'd', 'e' ]
print (lista1 )

lista1.append('perro')

print (lista1)

lista1.remove('perro')
print (lista1)

lista2 =lista1.copy()

print (lista2)

print (lista2.count('perro') )
lista2.append('perro')
print (lista2.count('perro') )


print (len(lista2))

print(lista2[4])

lista2.pop()

print (lista2)

lista2.remove(lista2[1])
print (lista2)