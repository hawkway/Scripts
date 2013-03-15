#!/bin/bash

DATE=`date '+%Y-%m-%d-%H%M%S'`

cd ~

tar -zcvf ~/Dropbox/web_archive/template_bak_${DATE}.tar.gz Downloads

exit $?
