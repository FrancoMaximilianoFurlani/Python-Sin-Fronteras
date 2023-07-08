class QueueError(IndexError):
    pass


class Queue:
    def __init__(self):
        self.queue = []

    def put(self, elem):
        self.queue.insert(0, elem)

    def get(self):
        if len(self.queue) > 0:
            elem = self.queue[-1]
            del self.queue[-1]
            return elem
        else:
            raise QueueError


class SuperQueue(Queue):
    def __init__(self):
        Queue.__init__(self)
        self.__isempty = 0

    def isempty(self):
        if self.__isempty == 0:
            return True
        else:
            return False

    def put(self, elem):
        self.__isempty += 1
        Queue.put(self, elem)

    def get(self):
        self.__isempty -= 1
        return Queue.get(self)


que = SuperQueue()
que.put(1)
que.put("perro")
que.put(False)
for i in range(4):
    if not que.isempty():
        print(que.get())
    else:
        print("Cola vacía")
