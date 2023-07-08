class WeekDayError(Exception):
    pass


class Weeker:
    _WEEKDAYS = ["Lun", "Mar", "Mie", "Jue", "Vie", "Sab", "Dom"]

    def __init__(self, day):
        if day not in self._WEEKDAYS:
            raise WeekDayError(
                "El día de la semana debe ser uno de los siguientes valores: {}".format(
                    self._WEEKDAYS
                )
            )
        self._day = day

    def __str__(self):
        return self._day

    def add_days(self, n):
        idx = self._WEEKDAYS.index(self._day)
        new_idx = (idx + n) % 7
        self._day = self._WEEKDAYS[new_idx]

    def subtract_days(self, n):
        idx = self._WEEKDAYS.index(self._day)
        new_idx = (idx - n) % 7
        self._day = self._WEEKDAYS[new_idx]


try:
    weekday = Weeker("Lun")
    print(weekday)
    weekday.add_days(15)
    print(weekday)
    weekday.subtract_days(23)
    print(weekday)
    weekday = Weeker("Lunes")  # genera una excepción WeekDayError
except WeekDayError:
    print("Lo siento, no puedo atender tu solicitud.")
