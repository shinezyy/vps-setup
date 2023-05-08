default_version=22.04
version="${1:-$default_version}"
echo $version

uname -r
cat /etc/lsb-release
# sudo apt install --install-recommends linux-generic-hwe-${version}
sleep 3
sysctl net.ipv4.tcp_available_congestion_control
sleep 3
sudo modprobe tcp_bbr
sleep 3
echo "tcp_bbr" | sudo tee -a /etc/modules-load.d/modules.conf
sleep 3
echo "net.core.default_qdisc=fq" | sudo tee -a /etc/sysctl.conf
sleep 3
echo "net.ipv4.tcp_congestion_control=bbr" | sudo tee -a /etc/sysctl.conf
sleep 3
sudo sysctl -p
sleep 3
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
lsmod | grep bbr
