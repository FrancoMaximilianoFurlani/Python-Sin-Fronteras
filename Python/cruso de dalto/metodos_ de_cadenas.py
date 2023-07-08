cadena1 = "Hola soy franco"
cadena2 = "hola manola"

#funcion dir nos lansa por consola todas las funciones que podemos realizar

#resultado = (dir(cadena1))

#cadena en mayusculas 
mayus = cadena1.upper()

#cadena en minuscalas
minus = cadena1.lower()

# pimera letra de la cadena en mayusculas y lo demas en minusculas 
capita = cadena1.capitalize()

# busca una cadena si no hay coinsidencia devuelve -1
busqueda_find = cadena1.find("x")

# busca una cadena si no hay coinsidencia devuelve una exepccion

#busqueda_index = cadena1.index("x")

#es numero 
esnumerico = cadena1.isalnum()

#cuenta una cadena dentro de una cadena
contar = cadena1.count("ra")

# devuelve el largo de la cadena
contar_carac= len(cadena1)

# conpara con la ultimo lugar de la cadena
termina_con = cadena1.endswith("x")

# conpara con la primer lugar de la cadena
empiesa_com = cadena1.startswith("H")

# remplaza un valor 1 por un valor 2 

emplaza = cadena1.replace(" ", "-")

# serpara por un valor que le pasemos devulve un lista 

cadena_separada = cadena1.split(" ")

print(cadena_separada)