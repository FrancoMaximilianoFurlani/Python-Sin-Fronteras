import os 
os.system("cls")

# Indicar al usuario que ingrese una palabra
# y asignarlo a la variable user_word.

user_word = input("Introduce una palabra: ")
user_word = user_word.upper()
palabra=[]


for letter in user_word:
    if letter == "A" or letter == "E" or letter == "I" or letter == "O" or letter == "U":
        
        continue
    else: 
        palabra+= letter
        print(letter)
    
print(palabra)
        

