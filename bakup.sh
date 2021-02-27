#!/bin/bash
# 用于自动备份的脚本

# 指定需要备份的文件
FILES=(~/.vimrc)

for file in ${FILES[@]}
do
  echo "copy $file to current folder"
  cp "$file" .
done
