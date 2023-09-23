class QueueError(IndexError):
    # Clase para manejar excepciones personalizadas al trabajar con listas.
    # Hereda de IndexError para reutilizar su comportamiento.
    pass

class Queue:
    def __init__(self):
        # Inicializa una lista vacía.
        self.queue = []
        
    def put(self,elem):
        # Agrega un elemento al inicio de la lista.
        self.queue.insert(0,elem)
        
    def get(self):
        # Obtiene el elemento del final de la lista y lo elimina de ella.
        # Si la lista está vacía, lanza una excepción de tipo QueueError.
        if len(self.queue) > 0:
            elem = self.queue[-1]
            del self.queue[-1]
            return elem
        else:
            raise QueueError

class SuperQueue(Queue,QueueError):
    # Clase que hereda de Queue y añade algunas funcionalidades adicionales.
    def __init__(self):
        # Inicializa la lista y el atributo privado __isempty.
        Queue.__init__(self)
        self.__isempty = 0
    
    def isempty(self):
        # Devuelve True si la lista está vacía y False en caso contrario.
        if self.__isempty==0:
            return True
        else : return False
        
    def put(self, elem):
        # Agrega un elemento a la lista y actualiza el valor de __isempty.
        self.__isempty += 1
        Queue.put(self, elem)
        
    def get(self):
        # Obtiene un elemento de la lista y actualiza el valor de __isempty.
        self.__isempty -= 1
        val = Queue.get(self)
        return val

# Creamos un objeto de la clase SuperQueue.
que = SuperQueue()

# Agregamos algunos elementos a la lista.
que.put(1)
que.put("perro")
que.put(False)

# Iteramos sobre la lista y obtenemos cada elemento hasta que esté vacía.
for i in range(4):
    if not que.isempty():
        print(que.get())
    else:
        print("lista vacía")
        
        
        
        

