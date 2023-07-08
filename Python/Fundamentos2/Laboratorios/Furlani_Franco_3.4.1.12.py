class Timer:
    def __init__(self, hr=0, min=0, seg=0):
        self.__hr = hr
        self.__min = min
        self.__seg = seg
        self.__str__()

    def __str__(self):
        h = str(self.__hr)
        m = str(self.__min)
        s = str(self.__seg)
        if self.__hr < 10:
            h = "0"+h
        if self.__min < 10:
            m = "0"+m
        if self.__seg < 10:
            s = "0"+s
        return f"""Timer:  {h}: {m}: {s}"""

    def next_second(self):
        self.__seg += 1
        if self.__seg == 60:
            self.__seg = 0
            self.__min += 1
            if self.__min == 60:
                self.__min = 0
                self.__hr += 1
                if self.__hr != 60:
                    self.__hr = 0

    def prev_second(self):
        self._Timer__seg -= 1
        if self._Timer__seg == -1:
            self._Timer__seg = 59
            self._Timer__min -= 1
            if self._Timer__min == -1:
                self._Timer__min = 59
                self._Timer__hr -= 1
                if self._Timer__hr == -1:
                    self.__hr = 23


timer = Timer(60, 59, 59)
print(timer)
timer.next_second()

print(timer)
timer.prev_second()

print(timer)
