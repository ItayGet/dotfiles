#!/usr/bin/python

import os
import sys

F_CURR_WP  = os.path.dirname(os.path.realpath(__file__)) + "/currwp"
BGS_DIR = os.path.expanduser("~/prm/bgs/")

def list_files(path):
    l = []

    for f in os.listdir(path):
        f = BGS_DIR + f
        if os.path.isfile(f):
            l.append(f)

    return l

def read_currwp():
    with open(F_CURR_WP, 'r') as f:
        r = f.read()
    return r

def write_currwp(contents):
    with open(F_CURR_WP, 'w') as f:
        f.write(contents)

def move_wp(index):
    files = list_files(BGS_DIR)

    if len(files) < 1:
        print("ERROR: no files in bgs dir")
        quit()

    curr_wp = read_currwp()

    try:
        i_curr_wp = files.index(curr_wp)
    except ValueError:
        print("WARNING: current wallpaper was not found in directory. using the first file in dir")
        i_curr_wp = 0
    
    curr_wp = files[(i_curr_wp+index)%(len(files))]
    
    write_currwp(curr_wp)

    # Please don't name your files something stupid
    # I don't want to escape stuff
    os.system("feh --bg-scale {}".format(curr_wp))

if len(sys.argv) < 2:
    print(read_currwp())
    quit()

if sys.argv[1] == "next":
    move_wp(1)

if sys.argv[1] == "prev":
    move_wp(-1)

if sys.argv[1] == "setcurr":
    move_wp(0)
