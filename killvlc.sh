#!/bin/bash

###
### Run command for given number of seconds then kill it
###

read -p "How long should I run for? --> " counter

###
### number of seconds greater than zero
###

#cmds &

#sleep for $time
sleep $counter
   
#kill process by name
pkill -15 vlc

#wait for process to complete
sleep 10

#turn off monitor
xset dpms force off

exit