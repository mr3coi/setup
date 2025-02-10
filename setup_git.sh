#!/bin/bash

# Refer to 'https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration'
# for more information.

ln -s `pwd`/git_configs/gitignore_global ~/.gitignore_global
cp ./git_configs/gitmessage.txt ~/.gitmessage.txt

git config --global user.name SJC
git config --global user.email mr3coi@gmail.com

git config --global push.default simple
git config --global core.editor vi
git config --global color.ui auto	# Colorize git outputs
git config --global core.excludesfile ~/.gitignore_global
git config --global commit.template ~/.gitmessage.txt
git config --global help.autocorrect 30		# Runs spell-corrected version in 3 seconds

# Aliases
git config --global alias.adog 'log --all --decorate --oneline --graph'
git config --global alias.clog "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.cae "commit --allow-empty"
git config --global alias.rc "rebase --continue"
git config --global alias.cc "cherry-pick --continue"
