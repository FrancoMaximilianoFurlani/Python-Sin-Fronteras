def is_year_leap(anio):
    if anio % 4 != 0:
        return False
    elif anio % 100 != 0:
        return True
    elif anio % 400 != 0:
        return False
    else:
        return True


def days_in_month(anio, mes):
    if mes == 2:
        if is_year_leap(anio):
            return 29
        else:
            return 28
    elif mes in [4, 6, 9, 11]:
        return 30
    else:
        return 31


def day_of_year(anio, mes, dia):
    # Verificar si el año es bisiesto
    if is_year_leap(anio):
        dias_en_feb = 29
    else:
        dias_en_feb = 28

    # Verificar que los argumentos sean válidos
    if not (1 <= mes <= 12):
        return None
    if not (1 <= dia <= days_in_month(anio, mes)):
        return None

    # Calcular el día del año correspondiente
    dias_por_mes = [0, 31, dias_en_feb, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    dia_del_anio = sum(dias_por_mes[:mes]) + dia

    return dia_del_anio


print(day_of_year(2001, 1, 31))
