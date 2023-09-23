class QueueError(IndexError):
    def __init__(self):
        pass


class Queue:
    def __init__(self):

        self.__Queue = []

    def put(self, elem):
        self.__Queue.append(elem)

    def get(self):
        elemento = self.__Queue[-1]
        del self.__Queue[-1]
        return elemento


que = Queue()
que.put(1)
que.put("perro")
que.put(False)
try:
    for i in range(4):
        print(que.get())
except:
    print("Error de Cola")
