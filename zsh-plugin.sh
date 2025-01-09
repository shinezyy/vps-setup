SCRIPT_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

cd ~/projects
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py

echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

sed -i '/^plugins=/s/\(git\)/\1\n autojump\n  zsh-autosuggestions\n  zsh-vi-mode/' ~/.zshrc

# Add ctrl-f binding using absolute path
CTRL_F_FILE="${SCRIPT_DIR}/ctrl_f_acc_word.zshrc"
if [[ -f "$CTRL_F_FILE" ]]; then
    cat "$CTRL_F_FILE" >> ~/.zshrc
else
    echo "Warning: ctrl_f_acc_word.zshrc not found at $CTRL_F_FILE"
fi

# Apply patch using absolute path
PATCH_FILE="${SCRIPT_DIR}/auto_suggestion.patch"
SUGGEST_PLUGIN_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
cd "$SUGGEST_PLUGIN_PATH" || { echo "Failed to cd to zsh-autosuggestions plugin dir"; exit 1; }

if [[ -f "$PATCH_FILE" ]]; then
    if git apply --check "$PATCH_FILE"; then
        git apply "$PATCH_FILE" || echo "Failed to apply patch"
    else
        echo "Patch cannot be applied"
    fi
else
    echo "Warning: auto_suggestion.patch not found at $PATCH_FILE"
fi

echo "remember to source ~/.zshrc"
