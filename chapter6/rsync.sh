#!/bin/bash
# rsync 入门
# rsync可以对位于不同位置的文件和目录进行备份，
# 它在进行复制时，会比较源端和目的端文件，只有文件有更新才复制

# rsync -av source_path dest_path
# -a 表示归档，-v 表示在stdout上打印细节或进度

# 备份到远程主机
# rsync -av sour_dir username@host:PATH

# 将远程主机上的数据恢复到本地
# rsync -av username#root:PATH destination

# -z 可以压缩数据

# --delete 可以在备份时，删除源端已经不存在的目的端文件
