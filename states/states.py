#!/usr/bin/python

import os

def read_curr(f):
    with open(f, 'r') as file:
        r = file.read()
    return r

def write_curr(f, contents):
    with open(f, 'w') as file:
        file.write(contents)

def move_state(f, lis, index):
    contents = read_curr(f)

    try:
        i_curr = lis.index(contents)
    except ValueError:
        #contents isn't inside list
        i_curr = 0
    
    curr = lis[(i_curr+index)%(len(lis))]

    write_curr(f, curr)

    return curr

def main():
    print(move_state(f, lis, index))

if __name__ == "__main__":
    main()
