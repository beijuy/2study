my_class=[['a','b'],['c','d'],['e','f']]
print(my_class[1][1])
namelist=['a','b','c','d','e','f']
class2=[]
i=0
while(i<6):
    class2.append(
        [namelist[i],namelist[i+1]])
    i=i+2
print(class2)