from os import system
from modulo import numerodysplay 
from time import sleep
system ('cls')

imprecion = ['' for i in range(5)] # esta es una list que almacenara las 7 posicion de los led

def cleansleep(time=0):
      
      sleep(time)
      system('cls')
      

def prosesarunnumero(numero):
      NumAImprimir= numerodysplay(numero)

      for i in range(5):
            imprecion[i]=imprecion[i]+' '+NumAImprimir[i]

def cuerpo(numero):
      for i in numero:
            
            prosesarunnumero(i)

      for j in imprecion:
            print(j)


             


while True:
      try :
            
            numero = int(input('ingrese: numero: '))
            numero  = str(numero)
            cuerpo(numero)
            break
      except :
            cleansleep()
            print('valor no prosesable!!!')
            cleansleep(3)
            
            
            




      