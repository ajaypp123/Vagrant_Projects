#!/usr/bin/bash

# Dependency
yum install -y epel-release git vim
yum install -y httpd net-snmp perl pycairo mod_wsgi python-devel git gcc-c++0
yum install -y python-pip node npm

# Configure stats
git clone https://github.com/etsy/statsd.git
cd statsd/
npm install
sudo npm install -g forever
sudo npm install -g forever-service
sudo forever-service install statsd -s stats.js -o " /etc/statsd/config.js"
mkdir /etc/statsd/
cp /vagrant/config_example.js /etc/statsd/config.js
systemctl restart statsd
cd ..

# Configure Graphite
sudo pip install 'django<1.6'
sudo pip install 'Twisted<12'
sudo pip install 'django-tagging<0.4'
sudo pip install pytz
sudo pip install whisper
sudo pip install graphite-web
sudo pip install carbon

# Configure Grafana
yum localinstall -y https://dl.grafana.com/oss/release/grafana-5.4.3-1.x86_64.rpm
systemctl restart grafana-server
