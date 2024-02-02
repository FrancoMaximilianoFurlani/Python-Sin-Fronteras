# 3. Encapsulamiento:
# Define una clase CuentaBancaria con métodos para depositar, retirar y obtener saldo.
# Utiliza el encapsulamiento para proteger el saldo y acceder a él mediante métodos.

class cuentaBancaria():
    def __init__(self, nombre, saldoInicial):
        self.nombre = nombre
        self.__saldo = saldoInicial
        
    def depositar(self, deposito) :
        self.__saldo += deposito
        
    def retirar(self,retiro) :
        self.__saldo-= retiro
        
    def consultarSaldo(self) :
        return print(f"Saldo: {self.__saldo}")
    


franco = cuentaBancaria('Franco', 50000)




franco.consultarSaldo()
franco.retirar(800)
franco.consultarSaldo()


