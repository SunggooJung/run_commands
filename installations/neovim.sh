#!/bin/bash
# install the latest stable neovim

sudo apt remove neovim -y && \
sudo add-apt-repository ppa:neovim-ppa/stable && \
sudo apt-get update && \
sudo apt-get install neovim && \

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \


#to enable copilot, need node js version higher 16
sudo apt-get install npm && \
npm install -n g && \
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
	
source ~/.bashrc && \
nvm install v18 && \
nvm use 18 && \

#build coc
cd ~/.local/share/nvim/plugged/coc.nvim && \
npm install


