class Usuario():
    #metodos
    def __init__(self,nombre='sin nombre',apellido='sin apellido'):
        self.nombre = nombre
        self.apellido =apellido
        
    def saludo(self):
        print(f'hola mi nombre es {self.nombre} y mi apellido es {self.apellido}')

class Administrador(Usuario):
    def saludo(self):
        print(f'hola mi nombre es {self.nombre} {self.apellido} y soy admistrador ')
        


#instancias
usuario = Usuario('felipe', 'feliz')
usuario2 = Usuario('ali', 'furlani')
usuario3 = Administrador()

# print (usuario.nombre, usuario.apellido, usuario2.nombre, usuario2.apellido)


# usuario.saludo()
# usuario2.saludo()
usuario3 .saludo()

print()