# 4. Polimorfismo:
# Crea una interfaz Figura con un método Figura().
# Implementa clases como Circulo y Cuadrado que implementen la interfaz y calculen su área.

import math

# 1. Define la interfaz Figura
class Figura:
    def __init__(self, num):
        self.num = num

    def Calcular_area(self):
        pass

    def Tipo_de_Figura(self):
        pass

# 2. Implementa la clase Cuadrado que hereda de Figura
class Cuadrado(Figura):
    def __init__(self, num):
        super().__init__(num)

    def Calcular_area(self):
        return self.num * 4

    def Tipo_de_Figura(self):
        return 'Cuadrado'

# 3. Implementa la clase Circulo que hereda de Figura
class Circulo(Figura):
    def __init__(self, num):
        super().__init__(num)

    def Calcular_area(self):
        return math.pi * self.num**2

    def Tipo_de_Figura(self):
        return 'Círculo'

# 4. Crea una lista de instancias de Circulo y Cuadrado
lista = [Circulo(2), Circulo(3), Cuadrado(2)]

# 5. Itera sobre la lista e imprime la información de cada figura
for figura in lista:
    print(f'En un {figura.Tipo_de_Figura()} y su área es {figura.Calcular_area()}')
