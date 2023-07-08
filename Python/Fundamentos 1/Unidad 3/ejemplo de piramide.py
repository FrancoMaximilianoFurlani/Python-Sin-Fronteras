num_bloques = int(input("Ingrese el número de bloques: "))

for i in range(1, num_bloques + 1):
    print(" " * (num_bloques - i) + "#" * (2 * i - 1))
