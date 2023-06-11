#!/bin/bash
# 代理安装
# 部分资源需要请求 githubusercontent 等网站

read -p "请输入代理的命令：" proxy

# 安装 neovim Plug
echo "安装 vim-plug"
plugFile=$HOME/.config/nvim/autoload/plug.vim
if [ -e $plugFile ]; then
  echo "vim-plug 已经存在"
else
  $proxy curl -fLo $plugFile --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "vim-plug 安装结束"
fi

# 安装 node 版本管理器
echo "安装 node 版本管理器 n"
if [ -e ~/n ]; then
  echo "n 已经存在，请运行 bash n"
else
  # make cache folder (if missing) and take ownership
  sudo mkdir -p /usr/local/n
  sudo chown -R $(whoami) /usr/local/n
  # take ownership of Node.js install destination folders
  sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  # download n
  $proxy curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o ~/n
  bash n lts
  echo "n 和 node 安装成功"
fi

# 安装 ohmyzsh
echo "安装 ohmyzsh"
ohmyzshFile=~/.oh-my-zsh
if [ -e $ohmyzshFile ]; then
  echo "oh-my-zsh 已经存在\n"
else
  sh -c "$($proxy curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "ohmyzsh 安装结束\n"
fi

# 众神归位
echo "开始恢复配置"
echo "恢复coc-settings"
mkdir -p $HOME/.config/nvim
cp ./coc-settings.json $HOME/.config/nvim/coc-settings.json

echo "开始恢复init.vim"
cp ./init.vim $HOME/.config/nvim/init.vim

echo "开始恢复markdownlintrc"
cp ./markdownlintrc $HOME/.markdownlintrc

echo "开始恢复my_rc"
if [ -e $HOME/.my_rc ]; then
  echo "my_rc 已经存在\n"
else
  cp ./my_rc $HOME/.my_rc
fi

echo "开始prettierc"
cp ./prettierrc $HOME/.prettierrc

echo "开始恢复ranger配置"
mkdir -p $HOME/.config/ranger
cp ./rc.conf $HOME/.config/ranger/rc.conf
cp ./ringer.conf $HOME/.config/ranger/ringer.conf

echo "开始恢复vimrc"
cp ./vimrc $HOME/.vimrc

echo "开始恢复zshrc"
cp ./zshrc $HOME/.zshrc
