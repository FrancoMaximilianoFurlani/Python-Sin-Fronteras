# Función para calcular la proporción áurea
def calcular_proporcion_aurea():
    a = 1
    b = 1
    for _ in range(10):
        a, b = b, a + b
    golden_ratio = b / a
    return golden_ratio

# Obtener la proporción áurea
proporcion_aurea = calcular_proporcion_aurea()
print("La proporción áurea es:", proporcion_aurea)

# Solicitar al usuario que ingrese un número para verificar si está en la proporción áurea
numero = int(input("Ingresa un número para verificar si está en la proporción áurea: "))

# Calcular la diferencia entre el número ingresado y la proporción áurea
diferencia = abs(proporcion_aurea - numero)
print("La diferencia entre", numero, "y la proporción áurea es:", diferencia)