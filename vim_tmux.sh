mkdir -p ~/projects
cd ~/projects

# clone
git clone https://github.com/shinezyy/my_vim_conf.git
export vimConf=$HOME/projects/my_vim_conf
cd $vimConf

# vim plugin manager
git submodule update --init vim/bundle/Vundle.vim

# tmux
git submodule update --init tmux
cd ~
mv ~/.tmux.conf ~/.tmux.conf_bak
mv ~/.tmux.conf.local ~/.tmux.conf.local_bak
ln -s $vimConf/tmux/.tmux.conf .
ln -s $vimConf/tmux/.tmux.conf.local .

# vim for light-weight editing
mv ~/.vim ~/.vim_bak
mv ~/.vimrc ~/.vimrc_bak
cd ~
ln -s $vimConf/vim .vim
ln -s $vimConf/vimrc_py .vimrc
cd $vimConf
git submodule update --init vim/bundle/badwolf
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# neovim for development
mkdir -p ~/.config/nvim/lua  # create config dir for neovim
cd ~/.config/nvim
mv lazy-lock.json lazy-lock.json_bak
ln -sf $vimConf/neovim/lazy-lock.json .
mv ./lua/config ./lua/config_bak
ln -sf $vimConf/neovim/config ./lua/config
mv ./lua/plugins ./lua/plugins_bak
ln -sf $vimConf/neovim/plugins ./lua/plugins

'require("config.lazy")' > ~/.config/nvim/init.lua

