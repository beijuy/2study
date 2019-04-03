# coding: utf-8 正则化和可视化
# 0 导入模块 ， 生成 模拟数据集
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt 
BATCH_SIZE = 30
seed = 2
# create a random num from seed
rdm = np.random.RandomState(seed)
# return a martix line 300 row 2 as input list
X = rdm.randn(300,2)
# 从X里取出一行，判断如果坐标的平方和小于2，给Y赋值1，其余赋值0 作为答案
Y_ = [ int(x0*x0 + x1*x1<2) for (x0,x1) in X]
# 遍历Y中每一个元素，1赋值red 0赋值blue，可视化时用于区分
Y_Color = [['red' if y else 'blue'] for y in Y_]

# 对数据集X 和标签Y 进行shape整理 一个元素-1表示，随着第二个参数计算得到，第二个元素表示>多少列，
# 把X整理成n行2列，把Y整理成n行1列?????????????????????????????????????????????????????????>
# -1 为N行
X = np.vstack(X).reshape(-1,2)
Y_ = np.vstack(Y_).reshape(-1,1)
print(X)
print(Y_)
print(Y_Color)

plt.scatter(X[:,0],X[:,1],c=np.squeeze(Y_Color))
plt.show()
