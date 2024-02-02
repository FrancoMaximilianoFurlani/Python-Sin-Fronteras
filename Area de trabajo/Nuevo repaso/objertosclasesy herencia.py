class Usuario:
    def __init__(self,nombre, apellido):
        self.nombre = nombre
        self.apellido = apellido
    def saludo(self):
        print(f"Hola {self.nombre} {self.apellido}")
        
usuari = Usuario('felipe', 'feliz')

print (usuari.nombre)
print (usuari.apellido)

Usuario2 = Usuario('nati', 'fabro')

print (Usuario2.nombre)
print (Usuario2.apellido)
Usuario2.saludo()