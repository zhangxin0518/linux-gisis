#!/bin/bash

#不带参数的gdb调试
gdb exe_file

#带参数的gdb调试
gdb -args exe_file param1 param2 ...

#程序开始
start

#设置某文件的某行的断点
b name.cpp:128 (break)

#运行程序
r (run)

#进入的单步运行程序
s (step)

#不进入的单步运行程序
n (next)

#打印变量值
p (print)

#显示断点信息
info break

#清除所有断点
d (delete)

#如果已经进入了某函数，想退出该函数返回到它的调用函数中
finish

#结束当前循环
until

#退出gdb调试
q (quit)















