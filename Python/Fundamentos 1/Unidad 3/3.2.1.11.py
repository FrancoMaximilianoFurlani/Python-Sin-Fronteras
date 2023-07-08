word_without_vowels = ""

# Indicar al usuario que ingrese una palabra
# y asignarla a la variable user_word.

def tomar_valor():
    user_word = input("Ingrese una palabra: ")
    user_word =  user_word.upper() 
    return user_word
 
 
def procesesa(a):
    aux = ""
    for letter in a :
        
        if letter != "A" and letter != "E" and letter !=  "I" and letter !=  "O" and letter != "U":
            aux = aux + letter
            
        else:
            continue

    return aux
# Imprimir la palabra asignada a word_without_vowels.
word_without_vowels=  procesesa(tomar_valor())

print(word_without_vowels)