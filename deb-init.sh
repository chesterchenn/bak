#!/bin/bash

# 生成秘钥
echo "生成秘钥"
sshFile=~/.ssh/id_rsa
if [ -e $sshFile ]; then
  echo "$sshFile 已经存在"
else
  ssh-keygen
fi

# 添加 neovim 非稳定版
sudo add-apt-repository ppa:neovim-ppa/stable

# 更新包列表
echo "更新包列表"
sudo apt update

# 更新系统
echo "更新系统"
sudo apt upgrade -y

# 用于安装 debian 系的软件
echo "开始安装软件"
sudo apt install -y git proxychains4 zsh neofetch jq autossh xclip ripgrep neovim python3-pip
echo "安装软件结束\n"

# 更新 shell
echo "设置 shell"
if [ $SHELL != $(which zsh) ]; then
  chsh -s $(which zsh)
  echo "设置 zsh 成功"
else
  echo "当前 shell 为 $SHELL"
fi

