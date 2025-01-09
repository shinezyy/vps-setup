sudo apt install libfuse2t64

mkdir -p ~/.local/bin
cd ~/.local/bin

# from AWS which is not accessable from mainland CN
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

chmod u+x nvim.appimage
mv nvim.appimage nvim

echo "export PATH=\$HOME/.local/bin:\$PATH" >> ~/.zshrc

