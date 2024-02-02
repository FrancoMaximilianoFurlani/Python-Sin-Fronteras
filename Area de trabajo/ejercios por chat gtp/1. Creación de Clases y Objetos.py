
# 1. Creación de Clases y Objetos:
# Crea una clase Persona con atributos como nombre, edad y método para imprimir información.
# Haz instancias de la clase y muestra la información de cada persona.

class Persona():
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
    def imprimirSaludo(self):
        print(f'hola {self.nombre} tu edad es {self.edad}')
    
maria=Persona('maria', 19)


maria.imprimirSaludo()

