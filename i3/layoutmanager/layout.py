#!/usr/bin/python

import states
import os
import sys

F_CURR_LAYOUT = os.path.dirname(os.path.realpath(__file__)) + "/curr_layout"
LAYOUTS = ["us", "il"]

def move_layout(index):
    curr_layout = states.move_state(F_CURR_LAYOUT, LAYOUTS, index)

    os.system("setxkbmap {}".format(curr_layout))

if sys.argv[1] == "next":
    move_layout(1)

if sys.argv[1] == "prev":
    move_layout(-1)
