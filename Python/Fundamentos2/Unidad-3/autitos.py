class autos:
    def __init__(self, marca, año, velocidad_maxima, velicidad_minima, color):

        # self.marca = marca
        # self.año = año
        # self.velocidad_maxima = velocidad_maxima
        # self.velicidad_minima = velicidad_minima
        # self.color = color
        self.elautito = {
            "marca": marca,
            "año": año,
            "velocidad_max": velocidad_maxima,
            "velicidad_min": velicidad_minima,
            "color": color
        }


autito = autos("volswagen", 2000, 230, 0, 'rojo')

print(autito.elautito)
