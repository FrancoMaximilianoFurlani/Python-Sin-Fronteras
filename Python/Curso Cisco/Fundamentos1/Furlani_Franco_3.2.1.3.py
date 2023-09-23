secret_number = 777
import os
os.system('cls')

print(
"""
+==================================+
| ¡Bienvenido a mi juego, muggle!  |
| Introduce un número entero       |
| y adivina qué número he          |
| elegido para ti.                 |
| Entonces,                        |
| ¿Cuál es el número secreto?      |
+==================================+
""")

numerodeprueba = int( input("Que numero tengo en mente: "))
os.system('cls')


while numerodeprueba != secret_number:
    os.system('cls')

    print("""
   _____
  /     \\
/- (*) |*)\\
|/\.  _>/\|
    \__/    |
   _| |_   \-/
  /|\__|\  //
 |/|   |\\\\//
 |||   | ~'
 ||| __|
 /_\| ||
 \_/| ||
   |7 |7
   || ||
   || ||
   /\ \ \  
  ^^^^ ^^^
  
  """)
    print("Has fallado estas dentro de un bucle")
    numerodeprueba = int(input("prueba otro numero: "))

else: 
    os.system('cls')

    print("has logrado escapar del bucle")

print("""
        ______
        /      \\
       |        |
       |:/-\\--\.
        ( )-( )/,
         | ,  .
        / \- /. \\
       | ||L  / \ \\
      / /  \/    | *
     / /          \  \\
     | |      []   |\ |
    /| |           ||  |
    || |           ||  |
    |  |           ||  |
    /_ |__________|||  |
   /_ \| ---------||   |
   /_ / |         ||   |
  /  | ||         | |     
  \//  ||         | |  |
  /  | ||    T    | |  |
 /   | ||    |    
 """)
