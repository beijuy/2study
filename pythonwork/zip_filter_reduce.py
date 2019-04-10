"""
import random as rd
print(rd.uniform(10,20))
"""
import functools
def mod2(num1):
    return num1%2
def mod(num1,num2):
    return num1%num2
def add(num1,num2):
    return num1+num2
def multiply(num1,num2):
    return num1*num2
result01 = map(add,(1,2,3),(1,2,3))
print(list(result01))

# zip函数将输入的序列组成一个新的序列
# 根据下标最小的那个序列进行映射
result02 = zip([1,2,3],[1,2,3],[1,2,3])
print(list(result02))

# filter 函数会对指定序列进行过滤操作
# filter 函数的定义如下
# filter (function, iterable)
# filter 根据输入函数对序列进行过滤
result03 = filter(mod2,[1,4,5])
print(list(result03))

# reduce 函数是对参数序列的元素进行累积
# reduce 函数的定义如下
# function 是一个带有双参的函数, 
# reduce (function, iterable[,initializer])
result04 = filter(add,[1,2,3])
print(result04)