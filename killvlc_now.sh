#!/bin/bash

###
### kill vlc &&
### turn monitor off
###

sleep 5

pkill -15 vlc

sleep 10

xset dpms force off

exit
