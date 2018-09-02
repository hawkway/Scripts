#!/bin/python

# recursively iterate directory items, print names to file

# import modules
import os

cwd_path = os.getcwd()
file_name = cwd_path + '/file_names.txt'

def append_to_file(s):
    with open(file_name, 'a') as f:
        f.write(s + '\n')

def parse_dir_items():
    # get cwd
    current_dir = os.getcwd()
    # parse each item in dir
    for item in os.listdir(current_dir):
        # get full path name of file
        full_path = current_dir + "/" + item.strip()
        # if item is dir, change to it
        if os.path.isdir(full_path):
            os.chdir(full_path)
            # call recursive
            parse_dir_items()
        else:
            # print filename with path
            append_to_file(full_path)

# program start
parse_dir_items()
