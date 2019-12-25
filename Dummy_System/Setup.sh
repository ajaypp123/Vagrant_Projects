#!/usr/bin/bash

# Dependency
yum install -y epel-release git vim
yum install -y python-pip node npm vim*
yum install https://centos7.iuscommunity.org/ius-release.rpm
yum install python36u python36u-devel python36u-pip python36-setuptools
python3 easy_install.py pip
pip3 install –upgrade pip

systemctl stop firewalld
