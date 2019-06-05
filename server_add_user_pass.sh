useradd $1
mkdir -p /home/$1/.ssh
chown -R $1:$1 /home/$1
usermod -aG sudo $1
chsh $1 -s /bin/bash
passwd $1
