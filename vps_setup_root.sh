apt update
apt install zsh vim tmux curl wget git python3 tree htop putty-tools sudo
useradd $1
mkdir /home/$1/
cp ./*.sh /home/$1/
cp -r /root/.ssh /home/$1
chown -R $1:$1 /home/$1
usermod -aG sudo $1
passwd $1
chsh -s /usr/bin/zsh $1
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
