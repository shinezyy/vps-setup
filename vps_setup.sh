# create dirs
mkdir -p ~/.ssh/
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

bash ./vim_tmux_setup.sh

# pip3
sudo apt install python3-pip

python3 -m pip install --user --upgrade pynvim

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
