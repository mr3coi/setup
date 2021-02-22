#!/bin/bash

# Install .tmux.conf
TMUX_CONF_FILE=tmux.conf
TMUX_CONF_DEST=$HOME/.tmux.conf
if [ -L "$TMUX_CONF_DEST" ]; then
	echo ">>> symlink $TMUX_CONF_DEST exists; delete it"
	rm "$TMUX_CONF_DEST"
elif [ -e "$TMUX_CONF_DEST" ]; then
	echo ">>> $TMUX_CONF_DEST exists; store with '.backup' extension"
	mv "$TMUX_CONF_DEST" "$TMUX_CONF_DEST.backup"
fi
ln -s `pwd`/$TMUX_CONF_FILE "$TMUX_CONF_DEST"
