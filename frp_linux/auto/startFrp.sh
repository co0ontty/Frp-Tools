wget https://raw.githubusercontent.com/co0ontty/Frp-Tools/master/frp_linux/client/frpc.ini
echo -n "please input your remoteIp: "
read remoteIp
sed -i "s/your_remote_ip/$remoteIp/g" frpc.ini
wget https://raw.githubusercontent.com/co0ontty/Frp-Tools/master/frp_linux/client/frpc
chmod +x frpc
./frpc -c frpc.ini &
