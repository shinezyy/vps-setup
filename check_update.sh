sudo unattended-upgrade --dry-run -d | grep 'Checking' | grep main | awk '{ print $2 }'
echo "==================Above are main updates ================= Below are security updates ============"
sudo unattended-upgrade --dry-run -d | grep 'Checking' | grep security | awk '{ print $2 }'
