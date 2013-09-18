echo "Remove Previous Settings"
rm -rf ~/.vim
rm -rf ~/.vimrc

echo "Copying .vimrc"
cp vimrc ~/.vimrc

echo "Copying other folders"
mkdir -p ~/.vim
rsync -rv --exclude=.git * ~/.vim
