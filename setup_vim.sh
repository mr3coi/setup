#!/bin/bash

VIMRC_DEST=$HOME/.vimrc
if [ -L "$VIMRC_DEST" ]; then
	echo ">>> symlink $VIMRC_DEST exists; delete it"
	rm "$VIMRC_DEST"
elif [ -e "$VIMRC_DEST" ]; then
	echo ">>> $VIMRC_DEST exists; store with '.backup' extension"
	mv "$VIMRC_DEST" "$VIMRC_DEST.backup"
fi
ln -s `pwd`/.vimrc "$VIMRC_DEST"
echo `pwd`/.vimrc

# Setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "[IMPORTANT] Extra steps remain to complete installation of YouCompleteMe."
echo "            Refer to installation guides in the repository."

# Setup cscope_maps.vim
CSCOPE_MAPS_FILE=`pwd`/cscope_maps.vim
CSCOPE_MAPS_DEST=$HOME/.vim/plugin/cscope_maps.vim
if [ -L "$CSCOPE_MAPS_DEST" ]; then
	echo ">>> symlink $CSCOPE_MAPS_DEST exists; delete it"
	rm "$CSCOPE_MAPS_DEST"
elif [ -e "$CSCOPE_MAPS_DEST" ]; then
	echo ">>> $CSCOPE_MAPS_DEST exists; store with '.backup' extension"
	mv "$CSCOPE_MAPS_DEST" "$CSCOPE_MAPS_DEST.backup"
elif [ ! -d "$(dirname $CSCOPE_MAPS_DEST)" ]; then
    mkdir "$(dirname $CSCOPE_MAPS_DEST)"
    echo ">>> $(dirname $CSCOPE_MAPS_DEST) doesn't exist; create the directory"
fi
echo "$CSCOPE_MAPS_DEST"
ln -s "$CSCOPE_MAPS_FILE" "$CSCOPE_MAPS_DEST"
