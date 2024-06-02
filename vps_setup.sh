# create dirs
mkdir -p ~/.ssh/
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
mkdir -p ~/projects
cd ~/projects

# clone
git clone https://github.com/shinezyy/my_vim_conf.git

# vim
export vimConf=$HOME/projects/my_vim_conf
cd $vimConf
git submodule update --init tmux
cd ~
mv ~/.tmux.conf ~/.tmux.conf_bak
ln -s $vimConf/tmux/.tmux.conf .
mv ~/.vim ~/.vim_bak
mv ~/.vimrc ~/.vimrc_bak
cd ~
ln -s $vimConf/vim .vim
ln -s $vimConf/vimrc_bare .vimrc
cd $vimConf
git submodule update --init vim/bundle/Vundle.vim
git submodule update --init vim/bundle/badwolf

mkdir -p ~/.config/nvim  # create config dir for neovim
cd ~/.config/nvim
ln -s $vimConf/neovim/neovimrc ./init.vim
cd ~
mv ~/.vim ~/.vim_bak
ln -s $vimConf/vim .vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# pip3
sudo apt install python3-pip

python3 -m pip install --user --upgrade pynvim

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
