#!/bin/bash

# 用于安装 debian 系的软件
echo "开始安装软件"
sudo apt install -y vim git proxychains4 zsh neofetch

# 更新 shell
echo "更新 shell"
chsh -s /usr/bin/zsh

# 生成秘钥
echo "生成秘钥"
ssh-keygen
