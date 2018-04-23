#Start Install
cd /root
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

yum -y install gcc-c++
yum -y install flex
yum -y install bison
yum -y install screen

cd /root
curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0

cd /root
wget https://raw.githubusercontent.com/Admin-backups/text/master/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd /root/libpcap-1.8.1/
./configure
make
make install

cd /root/libpcap-1.8.1/
wget https://raw.githubusercontent.com/Admin-backups/text/master/kkshen.tar.gz
tar -zxvf kkshen.tar.gz
cd /root/libpcap-1.8.1/kkshen/
npm i
npm i -g pino
ifconfig

echo '谨慎使用！仅供研究！'
echo 'node index.js sniff eth0 1**.***.***.*** | pino'
