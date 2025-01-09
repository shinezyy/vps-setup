# this script change current repo remote from https to ssht
git remote -v | grep "https://" | awk '{print $1, $2}' | while read remote_name remote_url; do
  ssh_url=$(echo "$remote_url" | sed -e 's|https://|git@|' -e 's|/|:|')
  git remote set-url "$remote_name" "$ssh_url"
done
git remote -v
