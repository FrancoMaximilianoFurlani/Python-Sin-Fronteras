class pila:
    def __init__(self):
        self.lista_pila = []

    def push(self, value):
        self.lista_pila.append(value)

    def pop(self):
        value = self.lista_pila[-1]
        del self.lista_pila[-1]
        return value


stack_objects = pila()

stack_objects.push('a')
stack_objects.push('b')
stack_objects.push('c')
print(len(stack_objects.lista_pila))
print(stack_objects.lista_pila)

print(stack_objects.pop())
print(stack_objects.pop())
print(stack_objects.pop())

print(len(stack_objects.lista_pila))
print(stack_objects.lista_pila)
