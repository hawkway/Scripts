#!/bin/bash

echo "This will move { .bashrc .bash_ssh .conkyrc rc.lua global_script.sh } to their appropriate places . . . "

sleep 3

echo "cp ~/github/Configs/.bash_ssh ~/"

cp ~/github/Configs/.bash_ssh ~/

echo "mv ~/.bashrc ~/.bashrc_backup"

mv ~/.bashrc ~/.bashrc_backup

echo "cp ~/github/Configs/.bashrc ~/"

cp ~/github/Configs/.bashrc ~/

echo "mv ~/.config/conky/.conkyrc ~/.config/conky/conkyrc_backup"

mv ~/.config/conky/.conkyrc ~/.config/conky/conkyrc_backup

echo "cp ~/github/Configs/.conkyrc ~/.config/conky/"

cp ~/github/Configs/.conkyrc ~/.config/conky/

echo "mv ~/.config/awesome/rc.lua ~/.config/awesome/rc.lua.backup"

mv ~/.config/awesome/rc.lua ~/.config/awesome/rc.lua.backup

echo "cp ~/github/Configs/rc.lua ~/.config/awesome"

cp ~/github/Configs/rc.lua ~/.config/awesome

echo "mv ~/.config/awesome/global_script.sh ~/.config/awesome/global_script_backup.sh"

mv ~/.config/awesome/global_script.sh ~/.config/awesome/global_script_backup.sh

echo "cp ~/github/Configs/global_script.sh ~/.config/awesome"

cp ~/github/Configs/global_script.sh ~/.config/awesome