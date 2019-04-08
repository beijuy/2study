# coding :utf-8
# 预测多预测少的影响一致
# 0 导入模块 生成数据集
import tensorflow as tf
import numpy as np
BATCH_SIZE = 8
# SEED 随机数种子
SEED = 23455

# 
rdm = np.random.RandomState(SEED)
# 32组 0和1的集合
X = rdm.rand(32,2)
# 取出每一组的x1和x2 + rdm(-0.05,+0.05)
Y_ =[[x1+x2+(rdm.rand()/10.0-0.05)] for (x1, x2) in X]

# 1 定义神经网络的输入，输出，定义向前传播过程
# shape 第一个值为喂入数据，第二个值为维度
x = tf.placeholder(tf.float32,shape=(None,2))
y_ = tf.placeholder(tf.float32,shape=(None,1))
# random_normal([n,m],stddev=,seed=)生成一个正态分布的随机数，n行m列
# tf.zeros   全0数组    tf.zeros([n,m],int32)
# tf.ones    全1数组    tf.ones([n,m],int32)
# tf.fill    全定值数组 tf.fill([3,2],6) 生成[[6,6],[6,6],[6,6]]
# tf.constant直接给值   tf.constant([3,2,1])
# stddev 均值 seed 随机数种子
w1 = tf.Variable(tf.random_normal([2,1],stddev=1,seed=1))
y = tf.matmul(x,w1)

# 2 定义损失函数及反向传播方法
# 定义损失函数为MSE,反向传播方法为梯度下降
loss_mse = tf.reduce_mean(tf.square(y_ - y))
# 学习率为0.001 均方误差损失函数往减小的方向优化
train_step = tf.train.GradientDescentOptimizer(0.001).minimize(loss_mse)

# 3生成会话，训练step轮
with tf.Session() as sess:
    # 初始化所有变量
    init_op = tf.global_variables_initializer()
    sess.run(init_op)
    # step
    STEPS = 20000
    for i in range(STEPS):
        start = (i*BATCH_SIZE) % 32
        end = (i*BATCH_SIZE) % 32+ BATCH_SIZE
        sess.run(train_step,feed_dict={x:X[start:end], y_:Y_[start:end]})
        if i % 500 ==0:
            print(sess.run(w1))
