cd /root
source ~/.bash_profile
cd /root/libpcap-1.8.1/pubgradar/
ifconfig -a
echo "上方信息为内网情况"
read -p "请输入上方看到的内网ip： " ip
forever start index.js sniff eth0 $ip | pino
echo "启动完成"
