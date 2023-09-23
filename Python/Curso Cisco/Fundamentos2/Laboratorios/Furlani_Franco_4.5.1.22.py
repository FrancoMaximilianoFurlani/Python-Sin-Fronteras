from datetime import datetime

# Crear un objeto datetime para el 4 de noviembre de 2020, 14:53:00
fecha = datetime(2020, 11, 4, 14, 53, 0)

# Formato 1: 2020/11/04 14:53:00
formato_1 = fecha.strftime("%Y/%m/%d %H:%M:%S")
print(formato_1)

# Formato 2: 20/November/04 14:53:00 PM
formato_2 = fecha.strftime("%y/%B/%d %H:%M:%S %p")
print(formato_2)

# Formato 3: Wed, 2020 Nov 04
formato_3 = fecha.strftime("%a, %Y %b %d")
print(formato_3)

# Formato 4: Wednesday, 2020 November 04
formato_4 = fecha.strftime("%A, %Y %B %d")
print(formato_4)

# Día de la semana: 3 (0: lunes, 6: domingo)
dia_semana = fecha.strftime("%w")
print("Día de la semana:", dia_semana)

# Día del año: 309
dia_anio = fecha.strftime("%j")
print("Día del año:", dia_anio)

# Número de semana en el año: 44
numero_semana = fecha.strftime("%U")
print("Número de semana en el año:", numero_semana)
