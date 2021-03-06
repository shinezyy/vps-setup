mkdir -p ~/projects
cd ~/projects
git clone https://github.com/shinezyy/my_vim_conf.git
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
ln -s $vimConf/vimrc_py .vimrc
cd $vimConf
git submodule update --init vim/bundle/Vundle.vim
