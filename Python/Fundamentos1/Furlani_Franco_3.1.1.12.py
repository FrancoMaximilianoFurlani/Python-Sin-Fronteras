year = int(input("Introduce un año:"))

if year < 1582:
    print ("el año no esta en el periodo gregoriano")

elif year % 4 != 0:
    print("Es un año comun")
    
elif year % 100 == 0:
    print("el año es bisiesto")
    
elif year % 400 == 0:
    print("el año es comun")

    
else:
    print("El año es bisiento")
    
    

