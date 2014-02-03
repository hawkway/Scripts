#!/bin/bash

#===============================================================================
#
#          FILE: github.sh
# 
#         USAGE: $ ./github.sh repo_name
# 
#   DESCRIPTION: creates a new folder in ~/github with $1, and initializes it with github
# 
#       OPTIONS: ---
#  REQUIREMENTS: bash, idk?
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ---
#  ORGANIZATION: ---
#       CREATED: 02/03/2014 15:30
#      REVISION:  ---
#===============================================================================

str1="git@github.com:hawkway/"

str2=".git"

url="${str1}$1${str2}"

# move to github directory
cd ~/github

# make a new directory with given repo name
mkdir $1

# debug test
#ls -la | grep $1

# change to new directory
cd $1

# initialize new repo
git init

# create new README
touch README

# write to README
echo "This repo was created with my github.sh script . . ." > README

# add file to git
git add README

# git commit
git commit -m 'first commit'

# git add origin
git remote add origin $url 

# push to master
git push origin master

# exit cleanly
exit 0
