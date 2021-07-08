#!/bin/bash

# 用于安装 debian 系的软件
echo "开始安装软件"
sudo apt install -y vim git proxychains4 zsh neofetch ranger

# 更新 shell
echo "更新 shell"
if [ $SHELL != "/usr/bin/zsh" ]; then
  chsh -s /usr/bin/zsh
fi
echo "当前 shell 为 $SHELL"

# 生成秘钥
echo "生成秘钥"
sshFile=~/.ssh/id_rsa
if [ -e $sshFile ]; then
  echo "$sshFile 已经存在"
else
  ssh-keygen
fi
