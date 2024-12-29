cd ~/projects
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py

echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

sed -i '/^plugins=/s/\(git\)/\1\n autojump\n  zsh-autosuggestions\n  zsh-vi-mode/' ~/.zshrc

# use ctrl-f to accept the word
cat ./ctrl_f_acc_word.zshrc >> ~/.zshrc

patch_path=$(realpath ./auto_suggestion.patch)
suggest_plugin_path=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd $suggest_plugin_path

# check whether the patch can be applied
if git apply --check "$patch_path"; then
    git apply "$patch_path"
else
    echo "Patch cannot be applied"
fi

echo "remember to source ~/.zshrc"
