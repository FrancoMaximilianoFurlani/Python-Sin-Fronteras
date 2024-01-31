import os 
from random import choice

os.system("cls")

def main():
    jugador = input("ingrese pi para piedra, pa para papel, ti para tijera: \n").lower()
    computadora = choice(['pi', 'pa', 'ti'])
    
    if jugador == computadora:
        print("empate")
    if El_jugador_gano(jugador, computadora):
        
        print("el jugador gano")
    else:
        print("el computador gano")
        
        
        
def El_jugador_gano(jugador, computadora):
    print(computadora)
    if jugador == 'pi' and computadora == 'pa':
        return True
    elif jugador == 'pi' and computadora == 'ti':
        return True
    elif jugador == 'pa' and computadora == 'pi':
        return True
    elif jugador == 'pa' and computadora == 'ti':
        return True
    elif jugador == 'ti' and computadora == 'pi':
        return True



main( )    
    