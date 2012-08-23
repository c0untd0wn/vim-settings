echo "Copying .vimrc"
cp vimrc ~/.vimrc

echo "Copying other folders"
mkdir -p ~/.vim
rsync -rv --exclude=.git * ~/.vim 
