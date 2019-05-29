#!/bin/bash

#指定生成可执行文件名
g++ -o exe_name main.cpp

#指定C++11编译器
g++ -o exe_name main.cpp -std=c++11

#连接某一个指定的库
g++ -o exe_name main.cpp -std=c++11 -lpthread

#指定GDB调试选项
g++ -o exe_name main.cpp -std=c++11 -lpthread -g

#指定库文件的搜索目录
g++ -o exe_name main.cpp -std=c++11 -lpthread -g -L "/usr/local/lib/"

#指定头文件的搜索目录
g++ -o exe_name main.cpp -std=c++11 -lpthread -g -L "/usr/local/lib/" -I "/usr/local/include/"

#指定编译器优化等级
g++ -o exe_name main.cpp -std=c++11 -lpthread -g -O3 -L "/usr/local/lib/" -I "/usr/local/include/"






