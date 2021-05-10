#!/bin/bash
# 用于备份饥荒存档
# Tool: zip
# OS: Arch linux

# .dst_conf 样本文件
# id=1234
# cluster=Cluster_1

confFile=~/.dst_conf
fileName=饥荒存档$(date "+%Y%m%d").zip
prefix=~

# 判断 .dst_conf 文件是否存在
test ! -e $confFile && echo "$confFile 文件不存在" && exit 0

conf=$(cat $conf)

# 截取 id
_id=$(echo "$conf" | grep "id=" | cut -d "=" -f 2)

# 截取cluster
_cluster=$(echo "$conf" | grep "cluster=" | cut -d "=" -f 2)

_path=$prefix/$_id

# 判断目标文件夹是否存在
test ! -e $_path && echo "$_path/$_cluster 存档不存在" && exit 0

echo "进行存档的目录：$_path/$_cluster"

# 进入目录，进行压缩
$(cd $_path; zip -Jqr ~/$fileName $_cluster)

# 判断文件是否存在
test -e ~/$fileName && echo "压缩文件完成"
