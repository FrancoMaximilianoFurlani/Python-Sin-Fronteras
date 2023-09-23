from calendar import Calendar


class MyCalendar(Calendar):
    def count_weekday_in_year(self, year, weekday):
        count = 0
        for month in range(1, 13):
            for _, week in self.monthdays2calendar(year, month):
                for day, day_of_week in week:
                    if day != 0 and day_of_week == weekday:
                        count += 1
        return count


# Crear una instancia de MyCalendar
cal = MyCalendar()

# Contar el número de ocurrencias de un día de la semana en un año
year = 2019
weekday = 0
count = cal.count_weekday_in_year(year, weekday)
print(count)

year = 2000
weekday = 6
count = cal.count_weekday_in_year(year, weekday)
print(count)
