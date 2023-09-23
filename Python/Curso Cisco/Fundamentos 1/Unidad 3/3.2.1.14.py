def tomar_numero():
    bloques = int(input("tomar el numero de pisos: "))
    return bloques


def calcular(bloques):
    pisos = 0
    while bloques - pisos > 0:
        pisos += 1
        bloques -= pisos
    return pisos


def imprimir(pisos):
    print(f"numero de pisos {pisos}.")


pisos = calcular(tomar_numero())

imprimir(pisos)
