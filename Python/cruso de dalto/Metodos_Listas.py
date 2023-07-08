lista = ["hola", "Franco", 33, 54, 65, True]

cantidad_de_elementos = len(lista)
print(cantidad_de_elementos)


# AGREGA UN ELEMENTO A LA LISTA CON APPEND

lista.append("ALBA")
print(lista)

# agrega un elemento con insert
 
lista.insert(2 , "toma")

print(lista)

# agrega una lista  con extend

lista.extend(["mama",False])
print(lista)

# elimina elementos de una lista con pop

lista.pop(0)
lista.pop(-1)
print(lista)

# elimina un elemento por su valor

remover = lista.remove("ALBA")
print(lista)

# ELIMINA TODOS LOS ELEMENTOS DE UNA LISTA 

#CREAR_LISTA = lista.clear()


# OREDENA LISTA EN OREDEN ASENDENTE 

#lista.sort()
print(lista)

# invierte el orden el lista

lista.reverse()
print(lista)