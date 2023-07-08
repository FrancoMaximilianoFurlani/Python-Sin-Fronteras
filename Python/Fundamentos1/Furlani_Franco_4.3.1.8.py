def is_year_leap(year):
    if year < 1582:
        return False
    elif year % 4 == 0:
        return True

    elif year % 100 == 0:
        return True

    elif year % 400 == 0:
        return True
    else:
        return False


def days_in_month(year, month):
    if month == 4 or month == 6 or month == 9 or month == 11:
        return 30
    if month == 2:
        if is_year_leap(year) == True:
            return 29
        else:
            return 28
    if (
        month == 1
        or month == 3
        or month == 5
        or month == 7
        or month == 8
        or month == 10
        or month == 12
    ):
        return 31


def day_of_year(year, month, day):
    validacion = False
    if month < 13:
        if day <= days_in_month(year, month):
            days = 0
            for j in range(month - 1):
                days += days_in_month(year, j + 1)
            days += day
            return days
        else:
            return None
    else:
        return None


print(day_of_year(2000, 12, 31))
