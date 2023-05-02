cd ~/projects
git clone https://github.com/wting/autojump.git
cd autojump
./install.py
echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

echo "remember to source ~/.zshrc"

