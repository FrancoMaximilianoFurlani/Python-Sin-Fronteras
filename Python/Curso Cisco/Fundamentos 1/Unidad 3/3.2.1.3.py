secret_number = 777

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

num = int(input("ingrese número: "))
while num != secret_number:
    num = int(input("ingrese número: "))
    
print("has salisdo del bucle")