# Paso 1: Crea una lista vacía llamada beatles.
# Paso 2: Emplea el método append() para agregar los siguientes
# miembros de la banda a la lista: John Lennon, Paul McCartney y George Harrison.
# Paso 3: Emplea el buclefor y el append() para pedirle al usuario que
# agregue los siguientes miembros de la banda a la lista: Stu Sutcliffe, y Pete Best.
# Paso 4: Usa la instrucción del para eliminar a Stu Sutcliffe y Pete Best de la lista.
# Paso 5: Usa el método insert() para agregar a Ringo Starr al principio de la lista.


# paso 1
Beatles = []
print("Paso 1:", Beatles)

# paso 2
for i in range(3):
    AUX = input("agregar integrante: ")
    Beatles.append(AUX)
print("Paso 2:", Beatles)

# paso 3
for i in range(2):
    AUX = input("agregar integrante: ")
    Beatles.append(AUX)

print("Paso 3:", Beatles)

# paso 4
Beatles.remove("Stu Sutcliffe")
Beatles.remove("Pete Best")
print("Paso 4:", Beatles)

# paso 5
Beatles.insert(1, "Ringo Star")
print("Paso 5:", Beatles)


# probando la longitud de la lista
print("Los Fav", len(Beatles))
