#Start Install
cd /root
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0

yum -y install gcc-c++
yum -y install flex
yum -y install bison
yum -y install screen

wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
./configure
make
make install


wget https://raw.githubusercontent.com/Admin-backups/text/master/kkshen.zip
tar -zxvf kkshen.zip
cd kkshen/
npm i
npm i -g pino
ifconfig

echo '谨慎使用！仅供研究！'
echo 'node index.js sniff eth0 1**.***.***.*** | pino'
