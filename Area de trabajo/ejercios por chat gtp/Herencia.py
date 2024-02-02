# 2. Herencia:
# Crea una clase base Animal con propiedades como nombre y método hacer_sonido().
# Deriva clases como Perro, Gato que hereden de Animal y sobrescriban el método hacer_sonido().

class Animal():
    def __init__(self,nombre):
        self.nombre = nombre
        
    def onomatopella(self):
        pass
    
class perro(Animal):
    def onomatopella(self):
        return 'ladrido'
    
class gato(Animal):
    def onomatopella(self):
        return 'maullido'


lala = perro('lala')
michi = gato('michi')


print (f"hola mi nombre es {lala.nombre} y mi sonido es {lala.onomatopella()}")
print (f"hila mi nombre es {michi.nombre} y mi sonido es {michi.onomatopella()}")