class Stack:
    def __init__(self):
        self.__stk = []

    def push(self, val):
        self.__stk.append(val)

    def pop(self):
        val = self.__stk[-1]
        del self.__stk[-1]
        return val


class CountingStack(Stack):
    def __init__(self):
        Stack.__init__(self)
        self.__contador = 0 # inicializa el contador
        

    def get_counter(self):
        print(self.__contador)
    # Presenta el valor actual del contador al mundo.


    def pop(self):
        val = Stack.pop(self)
        self.__contador += 1
        "print (self.__contador)" # con este fragmento controlamos que cuente correstamente a medida que correstamente el codigo 
    # Haz un pop y actualiza el contador.
	

stk = CountingStack()
for i in range(100):
    stk.push(i)
    stk.pop()
print(stk.get_counter())
