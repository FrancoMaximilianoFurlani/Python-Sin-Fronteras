def mysplit(strng):
    newstr = []
    palabra = ""
    for ch in strng:
        
        if ch.isalnum(): 
            palabra += ch
        else:
            newstr.append(palabra)
            palabra=""
    

    return newstr


print(mysplit("Ser o no ser, esa es la pregunta"))
print(mysplit("Ser o no ser,esa es la pregunta"))
print(mysplit("   "))
print(mysplit(" abc "))
print(mysplit(""))
