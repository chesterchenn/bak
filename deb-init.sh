#!/bin/bash

# 用于安装 debian 系的软件
echo "开始安装软件"
sudo apt install -y vim git proxychains4 zsh neofetch ranger
echo "安装软件结束\n"

# 更新 shell
echo "设置 shell"
if [ $SHELL != $(which zsh) ]; then
  chsh -s $(which zsh)
  echo "请重启终端"
else
  echo "当前 shell 为 $SHELL\n"
fi

# 生成秘钥
echo "生成秘钥"
sshFile=~/.ssh/id_rsa
if [ -e $sshFile ]; then
  echo "$sshFile 已经存在\n"
else
  ssh-keygen
fi

# 安装 vimPlug
echo "安装 vim-plug"
plugFile=~/.vim/autoload/plug.vim
if [ -e $plugFile ]; then
  echo "vim-plug 已经存在\n"
else
  curl -fLo $plugFile --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "vim-plug 安装结束\n"
fi

# 安装 node 版本管理器
echo "安装 node 版本管理器 n"
if [ -e ~/n ]; then
  echo "n 已经存在，请运行 bash n\n"
else
  # make cache folder (if missing) and take ownership
  sudo mkdir -p /usr/local/n
  sudo chown -R $(whoami) /usr/local/n
  # take ownership of Node.js install destination folders
  sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  # download n
  curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
  bash n lts
  echo "n 和 node 安装成功\n"
fi

