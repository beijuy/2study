studentInfo=[{'name':'zml','tel':'15858101880','id':'467620339'},
            {'name':'gqq','tel':'15319450602','id':'867847412'}]
def printMenu():
    print('='*30)
    print('Student Manager System'.center(30,' '))
    print('1.Add a Student Info'.center(30,' '))
    print('2.Delete a Student Info'.center(30,' '))
    print('3.Modify a Student Info'.center(30,' '))
    print('4.Show All student Info'.center(30,' '))
    print('0.Exit System'.center(30,' '))
    print('='*30)
def isInt(num):
    if num == int(num):
        return 1
    else:
        return 0
def addStudent(name = -1 ,tel= -1,id = -1):
    if name!=-1 and tel !=-1 and id != -1:
        studentInfo.append({'name':name,'tel':tel,'id':id})
        return 1
    else:
        return 0
def delStudent(num = -1):
    if num > 0 and isInt(num):
        del studentInfo[num]
        return 1
    else:
        return 0
def modifyStudent(num = -1,name = -1,tel = -1,id =-1):
    if num > 0 and isInt(num) and name !=-1 and tel!= -1 and id!=-1:
        studentInfo[num] = {'name':name,'tel':tel,'id':id}
        return 1
    else:
        return 0
def showall():
    for i in studentInfo:
        print("name:%s tel:%s id:%s "%(i.get('name'),i.get('tel'),i.get('id')))

def main():
    while():
        choose = input()
        printMenu()
        if choose == 0:
            print('Thanks.')
            break
        elif choose == 1:
            name = input('please input name:')
            tel = input('please input tel:')
            id = input('please input id:')
            addStudent(name,tel,id)
        elif choose == 2:
            num = input('please input you delete number')
            delStudent(num)
        elif choose == 3:
            num = input('please input you modify number')
            name = input('please input name:')
            tel = input('please input tel:')
            id = input('please input id:')
            modifyStudent(num,name,tel,id)
        elif choose == 4:
            showall()
if __name__ == "__main__":
    main()