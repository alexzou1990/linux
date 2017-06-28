#!/bin/bash

#1.获取随机字符串或数字

#1.1获取随机八位字符串
echo $RANDOM |md5sum | cut -c 1-8

openssl rand -base64 4

cat /proc/sys/kernel/random/uuid |cut -c 1-8
#1.2获取随机八位数字
echo $RANDOM|cksum | cut -c 1-8

openssl rand -base64  4|cksum|cut -c 1-8

date +%N |cut -c 1-8

