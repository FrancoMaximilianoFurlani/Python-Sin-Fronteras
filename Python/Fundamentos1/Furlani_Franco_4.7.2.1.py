from random import randrange
import os
os.system('cls')
from time import sleep 


EMPTY = " "
Player= "O"
Computer = "X"
board = [EMPTY for i in range(9)]
Winner = None


def verTablero():
    os.system('cls')
    print("+-------+-------+-------+")
    print("|   1   |   2   |   3   |")
    print("|   "+board[0]+ "   |   "+board[1]+"   |   "+board[2]+"   |")
    print("|       |       |       |")
    print("+-------+-------+-------+")
    print("|   4   |   5   |   6   |")
    print("|   "+board[3]+ "   |   "+board[4]+"   |   "+board[5]+"   |")
    print("|       |       |       |")
    print("+-------+-------+-------+")
    print("|   7   |   8   |   9   |")
    print("|   "+board[6]+ "   |   "+board[7]+"   |   "+board[8]+"   |")
    print("|       |       |       |")
    print("+-------+-------+-------+")
    
    

        
def jugar():
    global Winner
    verTablero()
    
        
    for i in range(4):
        
        print ("turno del jugador player :")
        valor = Player
        jugada(valor)    
        HubuUnGanador()
        
        if Winner != Player:
            for j in range(4):
                print ("Turno del adversario: ")
                valor = Computer
                jugada(valor)
                HubuUnGanador()
                if Winner == Computer:
                    print (" El adversario es el Winner")
                    verTablero()
                break
                    
        elif Winner== Player:
            print("El jugador es el Winner!!!")
            verTablero()
            break
        else:
            print("Empate")
            verTablero() 
            
            


def jugada(valor):
    
    anoto = False
    
    
    while anoto == False:
        
        if valor == Player:
            posicion = int ( input("Elegi una posicion del 1 al 9: ") )
            posicion-=1
            
        else:
            posicion = randrange(1,9)
                    
            
        
        if board[posicion] == EMPTY:
            anoto = True
            board[posicion] = valor
            verTablero()
            print("posision asignada")
            sleep(3)
            
            
        else:
            print ("esa posicion esta ocupada")
            sleep(3)
            
            
        verTablero()
        
            
            
def HubuUnGanador():
    global Winner
    controlhorizontal()
    controlvertical()
    controlDiagonal()

def controlhorizontal():
    global Winner
        
    if board[0]== board[1] == board[2] != EMPTY:
        Winner = board[0]
    elif board[3]== board[4]== board[5] != EMPTY:
        Winner = board[3]
    elif board[6]== board[7] == board[8] != EMPTY:
        Winner = board[6]
def controlvertical():
    global Winner
    
    if board[0]== board[3] == board[6] != EMPTY:
        Winner = board[0]
    elif board[1]== board[4] == board[7] != EMPTY:
        Winner = board[1]
    elif board[2]== board[5] == board[8] != EMPTY:
        Winner = board[2]
        
def controlDiagonal():
    global Winner
    if board[0] == board[4] == board[8] != EMPTY:
        Winner = board[0]
    elif board[6]== board[4] == board[2] != EMPTY:
        Winner = board[6]

board [4] = Computer
jugar()