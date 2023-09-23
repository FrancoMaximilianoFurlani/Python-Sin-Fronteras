class Timer:
    def __init__(self, hora, minutos, segundos):
        self.__hora = hora
        self.__minutos = minutos
        self.__segundos = segundos
        self.__str__()

    def __str__(self):
        h = str(self.__hora)
        m = str(self.__minutos)
        s = str(self.__segundos)
        if self.__hora == 0:
            h = '00'
        if self.__minutos == 0:
            m = '00'
        if self.__segundos == 0:
            s = '00'

        return f"""{h}:{m}:{s}"""

    def next_second(self):
        self.__segundos += 1
        if self.__segundos == 60:
            self.__segundos = 0
            self.__minutos += 1
            if self.__minutos == 60:
                self.__minutos = 0
                self.__hora += 1
                if self.__hora == 24:
                    self.__hora = 0

    def prev_second(self):
        self.__segundos -= 1
        if self.__segundos == -1:
            self.__segundos = 59
            self.__minutos -= 1
            if self.__minutos == -1:
                self.__minutos = 59
                self.__hora -= 1
                if self.__hora == -1:
                    self.__hora = 23


timer = Timer(23, 59, 59)
print(timer)
timer.next_second()
print(timer)
timer.prev_second()
print(timer)
