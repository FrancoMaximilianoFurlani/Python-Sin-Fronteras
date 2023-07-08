hour = int(input("Hora de inicio (horas): "))
mins = int(input("Minuto de inicio (minutos): "))
dura = int(input("Duración del evento (minutos): "))

x = (mins + dura)%60
y = (mins + dura)//60
z = (hour + y)%60
z%=24

print("el evento termina a las ", z, ":", x)
x