 #!/bin/python

# import modules
import os
import sys

# set cwd
currentDir = "/home/user/input/"

# parse each item in child dir
for item in os.listdir(currentDir):
    # if item is dir, change to it
    if os.path.isdir(item):
        os.chdir(item)
        # extract rar files
        cmd = "unrar e *.rar /home/user/output"
        os.system(cmd)
