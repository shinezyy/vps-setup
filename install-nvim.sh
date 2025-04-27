sudo apt install libfuse2

mkdir -p ~/.local/bin
cd ~/.local/bin

# from AWS which is not accessable from mainland CN
arch=$(uname -m)
if [ $(uname -o) = "Darwin" ]; then
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-${arch}.tar.gz
elif [ $(uname -o) = "GNU/Linux" ]; then
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-${arch}.appimage
    file_name=nvim-linux-${arch}.appimage
    chmod u+x ${file_name}
    mv ${file_name} nvim
fi

echo "export PATH=\$HOME/.local/bin:\$PATH" >> ~/.zshrc

