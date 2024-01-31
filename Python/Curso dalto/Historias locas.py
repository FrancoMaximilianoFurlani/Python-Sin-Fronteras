
# organization = 'Franco'

# print (f"Estoy programando mi nombre es {organization}.")
# print (organization+" tambien sabe concaternar")


# esto es script de historias locas!!! no hay mucho que comentar 
print ("""
       
       *Este un pequeño relato corto completa las instrucciones para ver que sale
       procura no mezclar las parabras que ingresas 
       
       """)
try:
    adjetivo1 = input("ingresa un adjetivo: ")
    verbo = input("ingresa un verbo: ")
    sustantivo = input("ingresa un sustantivo: ")

except :
    print ("Error, ingresa un valor valido")
    
    

madlib = f"""Programar es tan {adjetivo1}, siempre me {verbo} programar para {sustantivo},

me {verbo}!!!

"""
print (madlib)