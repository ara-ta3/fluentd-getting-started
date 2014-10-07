git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

cp -f /vagrant/script/bashrc ~/.bashrc
source ~/.bashrc
rbenv install 2.1.3
rbenv rehash
gem install bundler

git clone --branch=kibana-ruby https://github.com/rashidkpc/Kibana.git
cd ~/Kibana
bundle install
