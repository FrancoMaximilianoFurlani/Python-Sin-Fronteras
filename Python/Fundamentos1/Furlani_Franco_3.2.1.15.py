import os
os.system("cls")
n = int(input("Ingrese un numero que no sea negativo: "))
pasos = 0

while n!= 1:
    if n % 2 == 0:
        n = n // 2
        print (n)
        pasos +=1
    else: 
        n = n*3 +1
        print(n)
        pasos +=1
        
print ("pasos: ", pasos)