#!/bin/bash

# make temp directory

mkdir ~/abc123def

cd ~/abc123def

# get new

wget https://raw.githubusercontent.com/hawkway/Configs/master/bashrc_deb -O .bashrc

wget https://raw.githubusercontent.com/hawkway/Configs/master/.emacs -O .emacs

# backup old

cp ~/.bashrc ~/dot_bashrc_old

cp ~/.emacs ~/dot_emacs_old

# replace old with new

mv .bashrc ~/.bashrc

mv .emacs ~/.emacs

# remove temp directory

cd ~

rm -rf ~/abc123def

exit