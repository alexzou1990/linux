#!/bin/bash
###########################################################################
#1.获取随机字符串或数字

#1.1获取随机八位字符串
echo $RANDOM |md5sum | cut -c 1-8

openssl rand -base64 4

cat /proc/sys/kernel/random/uuid |cut -c 1-8
#1.2获取随机八位数字
echo $RANDOM|cksum | cut -c 1-8

openssl rand -base64  4|cksum|cut -c 1-8

date +%N |cut -c 1-8

###########################################################################
#2.检查软件包是否安装
if rpm -q $1 &>/dev/null; then
        echo "$1 installed"
else
        echo "$1 is not installed"
fi

############################################################################
#3.检查服务状态 ss命令：http://www.ttlsa.com/linux-command/ss-replace-netstat/
PORT=$(ss -an|grep -c $2)
SERVICE=$(ps -ef|grep $3|grep -vc grep)
echo $SERVICE
if [ $PORT -eq 0 -o $SERVICE -eq 0 ];then
        echo "$3 is down"
fi

#############################################################################
#4.检查主机存活状态

#############################################################################
