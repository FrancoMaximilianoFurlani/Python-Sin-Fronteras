# 4. Polimorfismo:
# Crea una interfaz Figura con un método Figura().
# Implementa clases como Circulo y Cuadrado que implementen la interfaz y calculen su área.

import math

class Figura():
    def __init__(self,medida):
        self.medida = medida

class circulo(Figura):
    def Figura(self):
        self.Calcular_area = math.pi * (self.medida**2)
        return self.Calcular_area
        
class cuadrado(Figura):
    def Figura(self):
        self.Calcular_area = self.medida*4
        return self.Calcular_area

cuadrado = cuadrado(2)

print(cuadrado.Figura())

circulito = circulo(2)

print(circulito.Figura())
            
