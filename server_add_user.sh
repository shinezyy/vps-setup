useradd $1
mkdir -p /home/$1/.ssh
cp $2 /home/$1/.ssh/authorized_keys
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1 /home/$1
usermod -aG sudo $1
passwd $1
