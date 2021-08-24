#!/usr/bin/python

import states
import os
import sys

F_CURR_WP  = os.path.dirname(os.path.realpath(__file__)) + "/currwp"
BGS_DIR = os.path.expanduser("~/prm/bgs/")
CURR_WP_FILE = os.path.join(BGS_DIR, "currwp")

def list_files(path):
    l = []

    for f in os.listdir(path):
        f = BGS_DIR + f
        if os.path.isfile(f):
            l.append(f)

    return l

def move_wp(index):
    curr_wp = states.move_state(F_CURR_WP, list_files(BGS_DIR), index)

    # Please don't name your fiels something stupid
    # I'm too lazy to escape stuff
    os.system("ln -sf {} {}".format(curr_wp, CURR_WP_FILE))
    os.system("feh --bg-scale {}".format(curr_wp))
    os.system("notify-send \"Wallpaper changed\" \"New background: {}\" -u low".format(curr_wp.split("/")[-1]))


    return curr_wp

if sys.argv[1] == "next":
    move_wp(1)

if sys.argv[1] == "prev":
    move_wp(-1)

if sys.argv[1] == "setcurr":
    move_wp(0)
