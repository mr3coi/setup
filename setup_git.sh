#!/bin/bash

git config --global user.name SJC
git config --global user.email mr3coi@gmail.com

git config --global push.default simple
git config --global color.ui auto	# Colorize git outputs

# Aliases
git config --global alias.adog 'log --all --decorate --oneline --graph'
