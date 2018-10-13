#!/bin/python

# import modules
import os
import sys

# init constants
RAR = ".rar"

# set cwd
currentDir = "/home/user/input/"

'''
recursively iterate directory items,
extract .rar files when found
'''
def ParseDirItems():
    # get cwd
    dir = os.getcwd()
    # parse each item in dir
    for item in os.listdir(dir):
        # if item is dir, change to it
        if os.path.isdir(item):
            os.chdir(item)
            # call recursive
            ParseDirItems()
        else:
            if item.endswith(RAR):
                # extract rar files
                cmd = "unrar e " + item + RAR + "/home/user/input/destination"
                print("running command: " + cmd)
                os.system(cmd)

# program start
ParseDirItems()
