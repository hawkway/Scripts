#!/bin/bash

DATE=`date '+%Y-%m-%d-%H%M%S'`

cd ~

tar -zcvf ~/Dropbox/www_archive/template_bak_${DATE}.tar.gz Website

exit $?
