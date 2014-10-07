rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh http://dl.iuscommunity.org/pub/ius/stable/Redhat/6/x86_64/ius-release-1.0-11.ius.el6.noarch.rpm
yum update
yum install -y openssl vim git yum openssl-devel httpd java-1.7.0

# fluentd インストール
curl -L http://toolbelt.treasuredata.com/sh/install-redhat.sh | sh
service td-agent start

cp /vagrant/script/elasticsearch.repo /etc/yum.repos.d/
yum -y install elasticsearch
