#!/bin/bash

# 众神归位
echo "开始同步配置"

mkdir -p $HOME/.config/nvim

echo "恢复coc-settings"
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
cp ./rifle.conf $HOME/.config/ranger/rifle.conf

echo "开始恢复vimrc"
cp ./vimrc $HOME/.vimrc

echo "开始恢复zshrc"
cp ./zshrc $HOME/.zshrc

echo "开始恢复tmux.conf"
cp ./tmux.conf $HOME/.tmux.conf
