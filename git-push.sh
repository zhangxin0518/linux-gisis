#!/bin/bash

#git基本上传操作
git init
git add .
git commit -m "your description"
git remote add origin git@github.com:zhangxin0518/ParseTool.git
git push -u origin master

#创建新分支并切换到新分支
git checkout -b 新分支名
#创建新分支
git branch 新分支名
#切换本地程序的远程分支
git checkout 待切换的分支

#删除本地分支
git branch -D 分支名
#查询本地与远程所有分支
git branch -a

#删除远程分支
git push origin --delete 分支名

#删除远程URL地址
git remote rm origin

#查看最新文件更改信息
git status

#显示commit历史更改信息
git log

#查询并配置git用户名和邮件信息
git config --global --list
git config --global user.name "your_name"
git config --global user.email "your_email@address.com"

#查看远程的ssh分支地址
git remote -v





















