#!/bin/bash
##############################setting#####################################

green="\e[32m";white="\e[0m";red="\e[31m";blue="\e[34m";yellow="\e[33m"
nowtime=`date "+%F %T"`
starttime=`date +'%Y-%m-%d %H:%M:%S'`
ip=`ifconfig | grep 'inet' | sed 's/        inet //' | sed 's/netmask.*//' | grep -v 'inet6' | grep -v '127.0.0.1'`
##############################export#####################################
echo "${yellow}－－－－－以下說明－－－－－${white}"
echo "${yellow}執行GitLab 系統安裝${white}"
echo "${yellow}適用於Ubuntu OS${white}"
echo "${yellow}時間：$nowtime${white}" | tee -a log.txt
echo "${yellow}IP：$ip ${white}" | tee -a log.txt
echo "${yellow}腳本將在一秒後開始．．．．．${white}"
sleep 1
##############################setting#####################################

sudo apt-get install net-tools openssh-server ca-certificates postfix tzdata -y

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

sudo apt-get install gitlab-ce -y

sudo gitlab-ctl reconfigure

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "net-tools" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝net-tools插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝net-tools插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "openssh-server" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝openssh-server插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝openssh-server插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "ca-certificates" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝ca-certificates插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝ca-certificates插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "postfix" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝postfix插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝postfix插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "tzdata" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝tzdata插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝tzdata插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
dpkg -l | grep "gitlab-ce" 1>/dev/null
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝gitlab-ce插件 ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝gitlab-ce插件 ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi

var=`expr $var + 1`;num=`expr $num + 1`;
curl -s $ip 1>/dev/null 
if [ "$?" = "0" ];then
echo "${blue}${num} _ [ 安裝GitLab ]${white} ${green}安裝成功${white}" | tee -a log.txt
else
echo "${blue}${num} _ [ 安裝GitLab ]${white} ${red}安裝失敗${white}" | tee -a log.txt
fi
