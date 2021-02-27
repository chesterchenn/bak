#!/bin/bash
# 用于自动备份的脚本

# 指定需要备份的文件
FILES=(~/.vimrc)

for file in ${FILES[@]}
do
  if [ -f "$file" ];then
    echo -e "\033[32mcopy $file to current folder \033[0m"
    cp "$file" .
  else
    echo -e "\033[31m$file don't exist\033[0m"
  fi
done
