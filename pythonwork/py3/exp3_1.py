def main():
    good_dict = {
    "001":{"name":"MacBook Pro","price":14999,"number":10},
    "002":{"name":"Omega Watch","price":11111,"number":10},
    "003":{"name":"Mi Book","price":4999,"number":10},
    "004":{"name":"IPad mini2","price":1998,"number":10},
    "005":{"name":"Mi8 phone","price":2998,"number":10},
    "006":{"name":"Hermes Belt","price":1999,"number":10},
    "007":{"name":"Rolex Man Watch","price":19999,"number":10},
    "008":{"name":"Burberry Glasses","price":4999,"number":10},
    "009":{"name":"Land Rover Discovery IV","price":99999,"number":10},
    }
    buylist={
        "001":0,
        "002":0,
        "003":0,
        "004":0,
        "005":0,
        "006":0,
        "007":0,
        "008":0,
        "009":0,
    }
    x=' '
    # buy
    while (x!='q'):
        # output list
        print('good list'.center(40,'*'))
        for key,value in good_dict.items():
            print(key+"  "+value['name'].ljust(25,' '),end="")
            print(str(value['price']).ljust(7," "),end="")
            print(str(value['number']).ljust(3," "))
        print("Now in list:",end="")
        print(buylist)
        # get x
        x=input('please input a value to buy(quit press q, check press c):')
        # quit
        if x=="q":
            print('Thanks for you watching.')
            break
        # check
        if x=="c":
            priceall=0
            for key,value in buylist.items():
                priceall+=good_dict[key]['price']*value
            print("All price is ")
            print(priceall)
            break
        # not find
        if None==good_dict.get(x, None):
            print('There is no good here.')
        # find
        else:
            #  0<num<number
            num = -1
            while(not (num<good_dict[x]['number'] and num>=0)):
                num = int(input('Enter the quantity you buy:'))
                if (num>=good_dict[x]['number']):
                    print("There aren't so many goods.")
                    print("There only have "+good_dict[x]['number']+" goods")
            good_dict[x]['number']-=num
            buylist[x]+=num
main()