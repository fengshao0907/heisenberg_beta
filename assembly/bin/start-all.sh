#!/bin/bash

# 仅限线上启动使用
DIR=`pwd`

echo "Current Working Directory: #{DIR}"

echo "Start LICAI-COREDB"
sh ./start.sh -c licai-coredb -p /home/pay/soft/sh-key.properties
[ $? -ne 0 ] && echo -e "\033[31m LICAI-COREDB START FAILED!!! \033[0m" && exit -1;
sleep 2

echo "Start LICAI-CIFDB"
sh ./start.sh -c licai-cifdb -p /home/pay/soft/sh-key.properties
[ $? -ne 0 ] && echo -e "\033[31m LICAI-CIFDB START FAILED!!! \033[0m" && exit -1;
sleep 2
