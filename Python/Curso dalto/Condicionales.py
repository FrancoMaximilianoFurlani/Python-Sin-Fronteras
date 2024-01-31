# if , else  (sí, sino)

a = 15
b = 20

if a > 59:
    print('A es mayor')
    
else:
    print('A no es mayor')
    
    
    
Ingreso_mensual = 100
Gasto_mensual = 50000


if  Ingreso_mensual > 10000:
   if Ingreso_mensual- Gasto_mensual <0:
       print('estas en deficit')
   elif Ingreso_mensual- Gasto_mensual> 3000:
       print('estas bien, pa')
   else:
       print('y pa, estas gastando una banda hay quever si te alcanza!!')
       
elif Ingreso_mensual>1000:
    print('estas en latam')
elif Ingreso_mensual>500:
    print('estas en argentina')
elif Ingreso_mensual > 200:
    print('estas en Venezuela')
    
else:
    print('andate  del pais a pata')
    
    
    