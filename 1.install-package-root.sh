 apt update
 apt install zsh vim tmux curl wget git python3 tree htop putty-tools p7zip-full nethogs ufw unzip net-tools jnettop -y

 apt install landscape-common -y
 apt install python3-distutils -y
 apt install libsodium23 -y
 apt install libsodium18 -y
 apt install proxychains -y

 locale-gen zh_CN.UTF-8
 update-locale

 timedatectl set-timezone Asia/Shanghai && date -u && date
