apt update
apt install zsh vim tmux curl wget git python3 tree htop putty-tools
useradd zyy
mkdir /home/zyy/
chown zyy:zyy /home/zyy
usermod -aG sudo zyy
chsh -s /usr/bin/zsh zyy
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
