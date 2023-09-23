blocks = int(input("Ingresa el número de bloques: "))
count = 0
height =0
while blocks>0:
    
    count+=1
    blocks-=count
    if blocks >= height:
        height+=1
    
print("La altura de la pirámide:", height)
