#!/bin/bash
# 用于备份饥荒存档
# OS: Arch linux

# .dst_conf 样本文件
# id=1234
# cluster=Cluster_1

# 判断 .dst_conf 文件是否存在
test ! -e ~/.dst_conf && echo ".dst_conf 文件不存在" && exit 0

conf=$(<~/.dst_conf)

echo "$conf"
