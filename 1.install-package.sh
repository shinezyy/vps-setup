sudo apt update
sudo apt install zsh vim tmux curl wget git python3 tree htop putty-tools p7zip-full sudo \
    nethogs ufw unzip net-tools jnettop -y

sudo apt install landscape-common -y
sudo apt install python3-distutils -y
sudo apt install libsodium23 -y
sudo apt install libsodium18 -y
sudo apt install proxychains -y

sudo locale-gen zh_CN.UTF-8
sudo update-locale

sudo timedatectl set-timezone Asia/Shanghai && date -u && date
