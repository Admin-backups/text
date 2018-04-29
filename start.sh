#Check Root
[ $(id -u) != "0" ] && { echo "权限不足，请以root的身份运行！"; exit 1; }
#Start Install
cd /root
wget --no-check-certificate https://raw.githubusercontent.com/Admin-backups/text/master/p
wget -N --no-check-certificate https://raw.githubusercontent.com/Admin-backups/KillAliyunECS/master/uninstall.sh
wget --no-check-certificate https://raw.githubusercontent.com/Admin-backups/text/master/restart.sh
wget -N --no-check-certificate -O /usr/local/bin/leida https://raw.githubusercontent.com/Admin-backups/text/master/leida
chmod 755 /usr/local/bin/leida
wget --no-check-certificate https://raw.githubusercontent.com/Admin-backups/text/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log

yum -y install gcc-c++
yum -y install flex
yum -y install bison
yum -y install screen

cd /root
wget https://raw.githubusercontent.com/Admin-backups/text/master/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
rm -rf libpcap-1.8.1.tar.gz
cd /root/libpcap-1.8.1/
./configure
make
make install

cd /root
curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0

cd /root/libpcap-1.8.1/
wget https://raw.githubusercontent.com/Admin-backups/text/master/archive.tar.gz
tar -zxvf archive.tar.gz
rm -rf archive.tar.gz
cd /root/libpcap-1.8.1/winnerpubg/
npm i
npm i -g pino
npm install -g forever
ifconfig -a
echo "上方信息为内网情况"
read -p "请输入上方看到的内网ip： " ip
forever start index.js sniff eth0 $ip | pino

cd /root
bash p
