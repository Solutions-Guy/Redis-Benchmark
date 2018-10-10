set -x

firewall-cmd --zone=public --add-port=6379/tcp --permanent &&
firewall-cmd --reload &&

yum install -y nano wget tcl screen gcc haproxy autoconf automake make gcc-c++ pcre-devel zlib-devel libmemcached-devel libevent git &&
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH} &&

wget http://download.redis.io/redis-stable.tar.gz &&
tar xvzf redis-stable.tar.gz &&
cd redis-stable &&
make &&
cp /root/redis-stable/src/redis-server /usr/local/bin/ &&
cp /root/redis-stable/src/redis-cli /usr/local/bin/ &&
cd ~ &&

git clone https://github.com/RedisLabs/memtier_benchmark.git &&
cd memtier_benchmark &&
autoreconf -ivf &&
./configure &&
make &&
make install &&
cd ~
