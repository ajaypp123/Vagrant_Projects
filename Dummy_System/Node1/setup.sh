#!/usr/bin/bash

# Dependency
yum install -y epel-release git vim
yum install -y python-pip node npm vim*
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum group install "Development Tools"

yum install -y gcc rpm-build python36 python36-pip python36-devel python36-setuptools openssl-devel libffi-devel python36-dbus

yum -y install wget

systemctl stop firewalld
systemctl disable firewalld
cp -rf /vagrant/vimrc ~/.vimrc



#	go get -u -v github.com/nsf/gocode
#	go get -u -v github.com/rogpeppe/godef
#	go get -u -v github.com/golang/lint/golint
#	go get -u -v github.com/lukehoban/go-outline
#	go get -u -v sourcegraph.com/sqs/goreturns
#	go get -u -v golang.org/x/tools/cmd/gorename
#	go get -u -v github.com/tpng/gopkgs
#	go get -u -v github.com/newhook/go-symbols
#	go get -u -v golang.org/x/tools/cmd/guru
	
# go get -u -v golang.org/x/tools/gopls
