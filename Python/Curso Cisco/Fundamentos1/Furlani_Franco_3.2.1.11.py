import os 
os.system("cls")

# Indicar al usuario que ingrese una palabra
# y asignarlo a la variable user_word.

user_word = input("Introduce una palabra: ")
user_word = user_word.upper()
palabra=""
word_without_vowels=""


for letter in user_word:
    if letter == "A" or letter == "E" or letter == "I" or letter == "O" or letter == "U":
        word_without_vowels+= letter
        continue
    else: 
        palabra+= letter
        
    
print(palabra)
print(word_without_vowels)
    # Completa el cuerpo del bucle for.

