def fun(*list):
    r_list=[]
    sum = 0
    r_list.append(max(list))
    r_list.append(min(list))
    for x in list:
        sum+=x
    r_list.append(sum/len(list))
    return r_list

x = input("judge a palindrome:")
if x == x[::-1]:
    print("yes")
else:
    print("no")
    print()