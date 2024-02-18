class mascota:
    def __init__(self, nombre):
        self.nombre = nombre
        
    def caracteristicas(self, patas, cola):
        self.patas = patas
        self.cola = cola
        
    def onomatopeya():
        pass
        
class Perro(mascota ):
    def caracteristicas(self):
        self.especie='perro'
        self.patas = 4
        self.cola = 'tiene cola'
    def onomatopeya(self):
        print ("ladrido")   
    
class Gato(mascota):
    def caracteristicas(self):
        self.especie='gato'
        self.patas = 4
        self.cola = 'tiene cola'
    def onomatopeya(self):
        print ("mauyido")
            
class SuperMascota(Perro, Gato, mascota):
    def caracteristicas(self):
        return print (f"{self.nombre}: es un {self.especie}, tiene {self.patas}, y {self.cola}" )
        

ali  = Gato('ali')
ali.caracteristicas()