class pila:
    def __init__(self):
        self.__pila_list = []

    def empujar(self, valor):
        self.__pila_list.append(valor)

    def obtener(self):
        val = self.__pila_list[-1]
        del self.__pila_list[-1]
        return val


class Pila_mejorada:
    def __init__(self):
        pila.__init__(self)
        self.__sumatoria = 0

    def empujar(self, valor):
        self.__sumatoria += valor
        pila.empujar(self, valor)

    def obtener(self):
        val = pila.obtener(self)
        self.__sumatoria -= val
        return val

    def obtener_sumatoria(self):
        return (self.__sumatoria)


objects = Pila_mejorada()

objects.empujar(2)
objects.empujar(3)
objects.empujar(4)

print(objects.obtener_sumatoria())

print(objects.obtener())
print(objects.obtener_sumatoria())
print(objects.obtener())
print(objects.obtener_sumatoria())
print(objects.obtener())
print(objects.obtener_sumatoria())
