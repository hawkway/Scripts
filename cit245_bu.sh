#!/bin/bash

DATE=`date '+%Y-%m-%d-%H%M%S'`

cd ~/Dropbox/Public

tar -zcvf ~/Dropbox/CIT_245_BU/CIT_245_bak_${DATE}.tar.gz CIT_245

exit $?