#!/bin/bash

echo "This will move { .bashrc .bash_ssh .conkyrc rc.lua global_script.sh } to their appropriate places . . . "

sleep 3

echo "cp ~/github/Configs/.bash_ssh ~/test"

cp ~/github/Configs/.bash_ssh ~/test

echo "mv ~/test/.bashrc ~/test/.bashrc_backup"

mv ~/test/.bashrc ~/test/.bashrc_backup

echo "cp ~/github/Configs/.bashrc ~/test"

cp ~/github/Configs/.bashrc ~/test

echo "mv ~/test/.config/conky/.conkyrc ~/test/.config/conky/conkyrc_backup"

mv ~/test/.config/conky/.conkyrc ~/test/.config/conky/conkyrc_backup

echo "cp ~/github/Configs/.conkyrc ~/test/.config/conky/"

cp ~/github/Configs/.conkyrc ~/test/.config/conky/

echo "mv ~/test/.config/awesome/rc.lua ~/test/.config/awesome/rc.lua.backup"

mv ~/test/.config/awesome/rc.lua ~/test/.config/awesome/rc.lua.backup

echo "cp ~/github/Configs/rc.lua ~/test/.config/awesome"

cp ~/github/Configs/rc.lua ~/test/.config/awesome

echo "mv ~/test/.config/awesome/global_script.sh ~/test/.config/awesome/global_script_backup.sh"

mv ~/test/.config/awesome/global_script.sh ~/test/.config/awesome/global_script_backup.sh

echo "cp ~/github/Configs/global_script.sh ~/test/.config/awesome"

cp ~/github/Configs/global_script.sh ~/test/.config/awesome