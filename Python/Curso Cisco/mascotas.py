class mascota:
    def __init__(self):
        self.mascota = []

    def get_mascota(self):
        return self.mascota

    def set_mascota(self, value):
        self.mascota.append(value)


nala = mascota()

nala.set_mascota('nala')
nala.set_mascota('15kg')
nala.set_mascota('1,1')

print(nala.get_mascota())
