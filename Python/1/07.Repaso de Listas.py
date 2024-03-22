lista = []

for i in range(5):
    try:
        lista.append( int(input('agregar un numero a la lista: ')))
    except ValueError:
        print ('solo puede pasar nuemro')
        
print (lista)    

print (len(lista))

print (lista.count())

