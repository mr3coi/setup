#!/bin/bash

git config --global user.name SJC
git config --global user.email mr3coi@gmail.com

git config --global push.default simple

# Aliases
git config --global alias.adog 'log --all --decorate --oneline --graph'
git config --global alias.clog "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
