#!/usr/bin/env bash
echo "Cloning vim-settings git repository"
git clone https://github.com/c0untd0wn/vim-settings.git ~/vim-settings

echo "Removing Previous Settings"
rm -rf ~/.vim
rm -rf ~/.vimrc

echo "Downloading vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copying .vimrc"
cp ~/vim-settings/.vimrc ~/.vimrc

echo "Installing plugins!"
vim +PlugInstall +qall
