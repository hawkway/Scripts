#!/bin/bash

# this is not my original work

extract ()
{
    if [ -f $1 ] ; then
      case $1 in
        *.tar.gz)  tar xzf $1;;
        *.gz)      gunzip $1;;
        *.tar)     tar vxf $1;;
        *.tgz)     tar vxzf $1;;
        *.tar.bz2) tar vxjf $1;;
        *.bz2)     bunzip2 $1;;
        *.rar)     rar x $1;;
        *.tbz2)    tar vxjf $1;;
        *.zip)     unzip $1;;
        *.Z)       uncompress $1;;
        *)         echo "can't extract $1";;
      esac
    else
      echo "no file called $1"
    fi
}

# iterate over dir contents
for file in *.*
do
    # check file exists
    if [ -e $file ]; then
        extract $file
    fi
done
