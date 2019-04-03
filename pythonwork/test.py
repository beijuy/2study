# string index from 0 ,reverse index from -1 to -âˆ?
s1="11 22 33 44 55"
# normal output
print('I love '+s1)
# format output
print('I love %s'%s1)
# for loop output
for i in range(0,4):
    print(s1[i])
# cut into slices method:[1,4)
print(s1[1:4])
# cut into slices method:(0,4]
print(s1[:4])
# cut Into slices method:reverse two number: -2,-1 
print(s1[-2:])
# Reprint
print(s1*2)
# find index of string in another string
print(s1.find('11'))
# find time of string in another string
print(s1.count('1'))
# replace a a part string from a to b
print(s1.replace('1','2'))# a ,b
# split a string
print(s1.split())
# title case
print('zhang meng li'.title())
# Capitalize of string initals
print('zhang meng li'.capitalize())
# string small-caps
print('zhang meng li'.upper())
# lowercase
print('ZHANG MENG LI'.lower())
# left align
print(s1.ljust(20,'*'))
# right align
print(s1.rjust(20,'*'))
# center align
print(s1.center(20,'*'))
# delete space from left
print('  zhang meng li  '.lstrip())
# delete space from left and right
print('  zhang meng li  '.strip())
# delete space from right
print('  zhang meng li  '.rstrip())
# list form different element by[]
# list modify content, include another list, and slice
name_list=['aaa','bbb','ccc','ddd']
print(name_list[0:4])
for name in name_list:
    print(name)
info=[18,'female','married']
# a.append(b) == b as a member join in a
info.append(name_list)
print(info)
# a.extend(b) == b's member as lots of members join in a
info.extend(name_list)
print(info)
# insert a member(index, string)
name_list.insert(0,'000')
print(name_list)
# modify a member
name_list[0]='AAA'
print(name_list)
# delete a member or list
del name_list[0]
print(name_list)
arr = [3 ,2 ,5, 1]
arr.reverse()
print(arr)
# sort list from small
arr.sort()
# sort list from big
arr.sort(reverse=True)
print(arr)

    