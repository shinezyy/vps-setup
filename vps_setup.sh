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

# pip3
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
sudo -H python3 get-pip.py

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
