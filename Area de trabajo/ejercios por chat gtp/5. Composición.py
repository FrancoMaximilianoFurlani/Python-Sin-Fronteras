# 5. Composición
# Crea una clase Motor y una clase Auto.
# Utiliza la composición para agregar un objeto Motor a la clase Auto.

class Motor():
    def encendido(self):
        return 'motor encendido'
    def Apagado(self):
        return 'motor apagado'
    
class Auto():
    def __init__(self):
        self.motor = Motor()
        
    def Conducir(self):
        return 'auto en movimiento'
    
    def Frenar(self):
        return 'auto afrenado'
    
camaro = Auto()
lista= [
    camaro.motor.encendido(),
    camaro.Conducir(),
    camaro.Frenar(),
    camaro.motor.Apagado()]

for i in lista:
    print (i)