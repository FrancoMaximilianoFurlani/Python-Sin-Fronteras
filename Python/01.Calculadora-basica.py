
print ('calculadora que solo suma')
while True:
    try:
        n = int(input('ingrese el primer numero:'))
        break
    except ValueError:
        print (' solo se puede ingresar nuemro enteros')
while True:
    try:
        m = int(input('ingrese el sengundo nuemro:'))
        break
    except  ValueError:
        print (' solo se puede ingresar nuemro enteros')


while True:
    simbolo = input('ingrese el simbolo de la operacion a realizar escriba salir para finalizar: ')
        
    if simbolo == '+':
        print ('suma:', n,'+',m,'=',n+m)
    elif simbolo == '-':
        print ('resta:', n,'+',m,'=',n-m)
    elif simbolo == '*':
        print ('multiplicacion:', n,'+',m,'=',n*m)        
    elif simbolo == '/':
        print ('division:', n,'/',m,'=',n+m)  
    elif simbolo == 'salir':
        exit()
    else:
        print ('no es ningun simbolo aceptado ')
        
        
        
        