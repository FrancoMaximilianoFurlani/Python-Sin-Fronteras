class Stack:
    def __init__(self):
        self.__stk = []

    def push(self, val):
        self.__stk.append(val)
        return val

    def pop(self):
        val = self.__stk[-1]
        del self.__stk[-1]
        return val


class CountingStack(Stack):
    def __init__(self):
        Stack.__init__(self)
        self.__countador = 0

    def get_counter(self):
        return self.__countador

    def pop(self):
        self.__countador += 1
        Stack.pop(self)
        return self.__countador


stk = CountingStack()
for i in range(100):
    print(stk.push(i))
    print(stk.pop())
    # print(stk.get_counter())
print(stk.get_counter())
