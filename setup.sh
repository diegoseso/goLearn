#! /bin/bash

# Here we will add a php7 repo

apt-get install -y build-essential module-assistant
m-a prepare

SOURCES_CHAR=$(cat /etc/apt/sources.list | grep dotdeb | wc -c );

if [ ${SOURCES_CHAR} -eq 0 ] ;then 
    echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list 
    echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
fi 

apt-get update

apt-get install -y openssh-server

# we always need vim
apt-get install -y vim

# Gits installataion
apt-get install -y git

# GoLang compiler installation 
apt-get install -y golang

