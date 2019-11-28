#!/bin/bash

echo ">>> Creating symlink for .vimrc..."
/bin/bash setup_vimrc.sh

echo ">>> Setting up user info for Git..."
/bin/bash setup_git.sh
