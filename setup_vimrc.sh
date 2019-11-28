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
