apt update
apt install zsh vim tmux curl wget git python3 tree htop putty-tools sudo
useradd zyy
mkdir /home/zyy/
cp ./vps_setup.sh /home/zyy/
cp -r /root/.ssh /home/zyy
chown -R zyy:zyy /home/zyy
usermod -aG sudo zyy
passwd zyy
chsh -s /usr/bin/zsh zyy
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
