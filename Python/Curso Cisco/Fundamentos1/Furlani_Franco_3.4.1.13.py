import os
os.system('cls')

# paso 1
Beatles = []
print("Paso 1:", Beatles)

# paso 2
Beatles.append("John Lennon")
Beatles.append("Paul McCartney")
Beatles.append("George Harrison")
print("Paso 2:", Beatles)
for i in range(2):
    Beatles.append (input("Ingrese nuevo integrante: "))
# paso 3
print("Paso 3:", Beatles)
del Beatles[-1]
del Beatles[-1]
# paso 4
print("Paso 4:", Beatles)

# paso 5
Beatles.insert(0, "Ringo Starr")
print("Paso 5:", Beatles)


# probando la longitud de la lista
print("Los Fav", len(Beatles))
