x=input('input a string:')
print(len(x))
print(x.upper())
count={'char':0, 'number':0, 'space':0, 'other':0}
for i in x:
    if (i>='a' and i<='z') or (i>='A' and i<='Z'):
        count['char']+=1
    elif i in '0123456789':
        count['number']+=1
    elif i == ' ':
        count['space']+=1
    else:
        count['other']+=1
for key,value in count.items():
    print('%s='%key,value)