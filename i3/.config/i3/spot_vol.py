#!/usr/bin/env python3
#Author: Marcin Kocur, attribution license: https://creativecommons.org/licenses/by/4.0/
import subprocess
import os
import sys
env = os.environ
env['LANG'] = 'en_US'
app = '"Spotify"'

def find_sink_spot():
    x=0
    y=0
    pactl = subprocess.check_output(['pactl', 'list', 'sink-inputs'], env=env).decode().strip().split()
    if app in pactl:
        for e in pactl:
            x += 1
            if e == app:
                break
        for i in pactl[0 : x -1 ]:
            y += 1
            if i == 'Sink' and pactl[y] == 'Input' and '#' in pactl[y + 1]:
                sink_id = pactl[y+1]
            if i == 'Volume:' and '%' in pactl[y + 3]:
                volume = pactl[y + 3]
        sink_id = sink_id[1: ]
        volume = volume[ : -1 ]
        return sink_id

def mod_vol_spot(sink_id, amount):
    subprocess.run(['pactl', 'set-sink-input-volume', sink_id, amount])

def main():
    mod_vol_spot(find_sink_spot(), sys.argv[1])

if __name__ == '__main__':
    main()
