from calendar import Calendar


class MyCalendar(Calendar):
    def count_weekday_in_year(self, year, weekday):
        count = 0
        for month in range(1, 13):
            for week in self.monthdays2calendar(year, month):
                for day in week:
                    if day != 0 and day.weekday() == weekday:
                        count += 1
        return count


# Ingreso de valores por teclado
year = int(input("Ingrese el año: "))
weekday = int(
    input("Ingrese el día de la semana (0 para Lunes, 6 para Domingo): "))

# Uso de la clase MyCalendar
calendar = MyCalendar()
count = calendar.count_weekday_in_year(year, weekday)
print(
    f"El número de ocurrencias del día de la semana en el año es: {count}")
