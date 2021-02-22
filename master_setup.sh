#!/bin/bash

echo ">>> Creating symlink for .vimrc..."
/bin/bash setup_vimrc.sh

echo ">>> Creating symlink for .tmux.conf..."
/bin/bash setup_tmux.sh

echo ">>> Setting up user info for Git..."
/bin/bash setup_git.sh
