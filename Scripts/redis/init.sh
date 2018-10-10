set -x

firewall-cmd --zone=public --add-port=7000-7007/tcp --permanent &&
firewall-cmd --zone=public --add-port=17000-17007/tcp --permanent &&
firewall-cmd --reload &&
yum install -y nano wget tcl screen gcc &&

wget http://download.redis.io/redis-stable.tar.gz &&
tar xvzf redis-stable.tar.gz &&
cd redis-stable &&
make &&
cp /root/redis-stable/src/redis-server /usr/local/bin/ &&
cp /root/redis-stable/src/redis-cli /usr/local/bin/ &&

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB &&
\curl -sSL https://get.rvm.io | bash -s stable --ruby &&
source /usr/local/rvm/scripts/rvm &&
gem install redis &&

chmod u+x /root/clusterStart.sh