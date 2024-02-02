# 4. Polimorfismo:
# Crea una interfaz Figura con un método Figura().
# Implementa clases como Circulo y Cuadrado que implementen la interfaz y calculen su área.


import math

class Cuadrado(figura()):
    def __init__(self,num):
        self.num = num
    def Calcular_area(self):
        return self.num*4

class circulo():
    def __init__(self,num):
        self.num = num
    def Calcular_area(self):
        return pi*self.num**2
    
class figura():
    def __init__(self,num):
        self.num = num
    def Calcular_area(self):
        pass