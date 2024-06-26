cd ~/projects
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py

echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

sed -i '/^plugins=/s/\(git\)/\1\n  zsh-autosuggestions\n  zsh-vi-mode/' ~/.zshrc

echo "remember to source ~/.zshrc"

