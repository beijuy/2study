s1='ni zhen shuai'
print(s1[-2:])
print(s1.replace('shuai','chou'))
print(s1.ljust(10,'*'))
print(s1.title())
# tuple use () to include content ,can NOT modify
# tuple, String, list can slice
tu01=(1,2,3)
tu02=(4,5,6)
# tuple can use add (+) to connect
tu03=tu01+tu02
print(tu03)
for i in tu03:
    print(i)
list01=[66,77,88]
tu04=tuple(list01)
# dictionary 
info={'name':'zml','age':'16'}
info['site']='hangzhou'
print(info.get('name'))
print(info['name'])
del info['site']

for key,value in info.items():
    print('%s ='%key,value)
def main():
    a = 2
    b = 4
    c = add(a,b)
    print(c)
def add(num1,num2):
    return num1+num2
main()
