# Indicar al usuario que ingrese una palabra
# y asignarlo a la variable user_word.
def tomar_valor():
    user_word = input("Ingrese una palabra: ")
    user_word = user_word.upper()
    return user_word
 
def procesesa(a):
    
    for letter in a :
        
        if letter != "A" and letter != "E" and letter !=  "I" and letter !=  "O" and letter != "U":
            
            print (letter)
        else:
            continue


procesesa(tomar_valor())