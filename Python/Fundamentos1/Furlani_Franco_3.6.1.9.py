my_list = [1, 2, 4, 4, 1, 4, 2, 6, 2, 9]

for i in my_list:
    if my_list[i] not in my_list:
        continue
    else:
        del my_list[i]
        
my_list.sort()
print("La lista con elementos únicos:")
print(my_list)
