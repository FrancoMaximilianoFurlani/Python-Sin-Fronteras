def read_int(prompt, min, max):
    # esta funcion esta pensada para indentificar numero enteros atraves de errores
    # entre entre un intervalo de dos numero 
     while True:
        
        try:
            num = int(input(prompt))
            if ( num > min and  num < max):
                return num
            else:
                # me arroja un error de que no es posible concatenar enteros 
                min1 = str(min)
                max1 = str(max)
                print("Error: el valor no está dentro del rango permitido "+'('+min1+'..'+max1+')')

        except ValueError:
            #esta exepcion responde tanto para caracteres como para flotantes         
            print("Error: entrada incorrecta")
            

v = read_int("Ingresa un numero entre -10 a 10: ", -10, 10)

print("El número es:", v)
