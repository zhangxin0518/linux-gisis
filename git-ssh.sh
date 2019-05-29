#!/bin/bash

#生成ssh公匙
ssh-keygen -t rsa -C your_email

#查看ssh公匙
cat ~/.ssh/id_rsa.pub

#复制公匙到git的ssh上

#使ssh配置生效
eval "$(ssh-agent -s)"
ssh-add

#查看git是否配置成功
ssh -T git@github.com
