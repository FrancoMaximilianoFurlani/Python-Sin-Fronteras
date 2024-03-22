import mysql.connector
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    passwd="Ycmnt1j1",
    database="prueba"
)

mycursor = mydb.cursor()

mycursor.execute("show create table usuarios")

myresult = mycursor.fetchall()



print(myresultl)