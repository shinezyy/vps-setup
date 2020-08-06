# security
sudo sed -i "s/^#PasswordAuthentication.*/PasswordAuthentication no/g" \
        /etc/ssh/sshd_config
sudo sed -i "s/^PasswordAuthentication.*/PasswordAuthentication no/g" \
        /etc/ssh/sshd_config
sudo sed -i "s/^#PermitRootLogin.*/PermitRootLogin without-password/g" \
        /etc/ssh/sshd_config
sudo sed -i "s/^PermitRootLogin.*/PermitRootLogin without-password/g" \
        /etc/ssh/sshd_config

