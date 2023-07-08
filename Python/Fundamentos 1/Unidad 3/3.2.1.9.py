def analisa():
    valor = tomar_valor()
    while True:
        if valor == "chupacabras":
            return print("saliste del bucle")
            break
        else:
            print(f"escribiste {valor}")
            valor = tomar_valor()
        
def tomar_valor():
    valor = input("Ingrese palabras: ")
    return valor
    
analisa()
    